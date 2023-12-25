#!/usr/bin/python3

import os
import sys
import re
import itertools
import shutil
import argparse

sys.setrecursionlimit(99999)

match_jump = re.compile(r'^\s+(acall|lcall|ljmp|ajmp|sjmp)\s+_(\w+)$')
match_ptr  = re.compile(r'^\s+mov\s+\w+,#_(\w+)$')

arX = [ '\t ar7 = 0x07\n',
        '\t ar6 = 0x06\n',
        '\t ar5 = 0x05\n',
        '\t ar4 = 0x04\n',
        '\t ar3 = 0x03\n',
        '\t ar2 = 0x02\n',
        '\t ar1 = 0x01\n',
        '\t ar0 = 0x00\n']

def process_path(path, func, recursive=False):
    if os.path.isfile(path):
        # Process individual file
        func(path)
       #print(f"Processed {path}")
    elif os.path.isdir(path):
        # Process directory and its subdirectories if recursive is True
        if recursive:
            process_directory_recursive(path,func)
        else:
            process_directory(path,func)
    else:
        print(f"Error: '{path}' is neither a file nor a directory.")

def process_directory(directory_path,func):
    for file_name in os.listdir(directory_path):
           #if file_name.endswith('.asm'):  # Process asm files only
            file_path = os.path.join(directory_path, file_name)
            func(file_path)
           #print(f"Processed {file_path}")

def process_directory_recursive(directory_path,func):
    for root, _, files in os.walk(directory_path):
        for file_name in files:
           #if file_name.endswith(('.c','.h')):  # Process header files only
           file_path = os.path.join(root, file_name)
           func(file_path)
          #print(f"Processed {file_path}")





class Module:
    def __init__(self, name):
        self.name = name
        self.globl_list = []
        self.local_list = []
    def print_globl(self):
        print(f' Global func :')
        for func in self.globl_list:
            print(f'\t{func.name}\t{func.start_line}:{func.end_line}')
            print('\t\tlocal vars:')
            for var in func.local_vars:
                print(f'\t\t{var}')
    def print_local(self):
        print(f' Local func :')
        for func in self.local_list:
            print(f'\t{func.name}\t{func.start_line}:{func.end_line}')
            print('\t\tlocal vars:')
            for var in func.local_vars:
                print(f'\t\t{var}')

class TreeNode:
    module_list = []
    entry_point_list = []

    @classmethod
    def find_entry_points(cls,entry_point_name_list):
       #cls.entry_point_list = [obj for obj in cls.func_list if obj['name'] in entry_point_name_list]
        for mod in cls.module_list:
            for obj in mod.local_list + mod.globl_list:
                for ep_name in entry_point_name_list:
                    if obj.name == ep_name:
                        cls.entry_point_list.append(obj)
                        obj.is_orphan = False
                        obj.depth = 0

    @classmethod
    def print_module(self):
        for mod in self.module_list:
            mod.print_globl()
            mod.print_local()

    def __init__(self, name, file, local_vars=[], start_line=None, end_line=None):
        self.name = name
        self.file = file
        self.start_line = start_line
        self.end_line   = end_line

        self.local_vars = local_vars
        self.local_vars_alloc_start = None
        self.local_vars_alloc_end   = None
        # TODO find it and comment it out 

        self.traversed = False
        self.is_orphan = True

        self.children = []
        self.parents = []
        self.empty   = False
        self.depth   = None


    def add_child(self, child_node):
        self.children.append(child_node)

    def remove_child(self, child_node):
        self.children = [child for child in self.children if child != child_node]

    def print_tree(self, level=0):
        print("  " * level + f"|{self.name}")
        for child in self.children:
            child.print_tree(level + 1)

    def traverse(self):
        if self.traversed is True:
            return
        self.find_children()
        self.traversed = True
        for child in self.children:
            child.traverse()

    def find_children(self):
       #print(f'\nfinding children for {self.file.name}:{self.name}')
        with open(self.file.name, 'r') as f:
            lines = f.readlines()

        for i, line in enumerate(lines,1):
            # Find function calls in the function body:
            if i <= self.start_line:
               #print(f'{i} cont')
                continue
            if i > (self.end_line+1):
               #print(f'{i} break')
                break
            matches1 = match_jump.search(line)
            matches2 = match_ptr.search(line)
            matches = False
            fcall = None
            if matches1:
                fcall = matches1.group(2)
                matches = True
            elif matches2:
                fcall = matches2.group(1)
               #print(fcall)
                matches = True
            if matches:
               #print(f'\tfound func call {fcall} at line {i}')
                # Now search for func definition:
                #TODO check if the call lead to nowhere/multiple func defs
                # Search in local funcs of current module first:
                for obj in self.file.local_list :
                    if obj.name == fcall:
                        self.add_child(obj)
                        obj.is_orphan = False
               #        print(f'\t\tmatch local func at line {obj.start_line}')
                        obj.parents.append(self)
                        # Calculate depth for the child:
                        if (obj.depth is None) or (obj.depth < (self.depth +1)):
                            obj.depth = self.depth + 1
                        break
                else:
                # then in global funcs of all modules:
                    for mod in TreeNode.module_list:
                        for obj in mod.globl_list:
                            if obj.name == fcall:
                                self.add_child(obj)
                                obj.is_orphan = False
               #                print(f'\t\tmatch global func at {obj.file.name}:{obj.start_line}')
                                obj.parents.append(self)
                                # Calculate depth for the child:
                                if (obj.depth is None) or (obj.depth < (self.depth +1)):
                                    obj.depth = self.depth + 1
                                break

            
        


def find_functions_in_file(filename):
    if not filename.endswith('.asm'):  # Process asm files only
        return
    print(f'\nProcessing module {filename}')
    with open(filename, 'r') as f:
        lines = f.readlines()

    module = Module(filename)
    func_list  = []
    func  = None

    found_func = None
    func_name  = None
    start_line = None
    end_line_maybe = None
    local_vars = []

    for i, line in enumerate(lines,1):

        # Find out the comment portions about local var right before function definition:
        matches = re.search(r"^;.* in function '(\w+)'$", line)
        if matches:
            found_func = i 
            func_name  = matches.group(1)
            start_line = None
            end_line_maybe = None
            local_vars = []
            print(f'found func {func_name} at {i}')
            continue

       #matches = re.search(r"^;\s+function '(\w+)'$", line)
       #if matches:
       #    found_func = i 
       #    func_name  = matches.group(1)
       #    start_line = None
       #    end_line_maybe = None
       #    local_vars = []
       #    print(f'found func {func_name} at {i}')
       #    continue

        # add a dummy func for some module level codes
        matchesdummy = re.search(r'^;\s+global & static initialisations', line)
        if matchesdummy:
            print(f'found module level codes at line {i}')
            if re.search(r'^;-{22}', lines[i + 6 -1]):
                continue
            start_line = i + 6
           #func_name  = 'module_level_codes'
            end_line_maybe = i + 6
            continue

        if found_func is not None:
            # Find out where the function definition start:
            matches = re.search(r'_(\w+):', line)
            if matches and matches.group(1) == func_name:
                start_line = i 
                found_func =   None
                print(f'start line {start_line}')
                continue
            # Find out the names of local vars belong to current function:
            matches = re.search(r"^;.*Allocated with name\s+'(\w+)'$", line)
            if matches:
                local_vars.append(matches.group(1))
                continue

        elif start_line is not None:
            # Find out the sloc vars belong to current function:
            matches = re.search(r"^\s*\w+\s+(\w+),?(\w+)?$", line)
            if matches and func_name is not None: # skip module level codes (with func_name=None)
                args = matches.groups()
               #print(line)
                for arg in args:
                    if arg is None:
                        continue
                   #print(f'match arg {arg}')
                    matches2 = re.match('_'+func_name+'_sloc', arg)
                    if matches2:
                        print(f'sloc {arg} found')
                        local_vars.append(arg)
               #continue

            # Find out where the function definition end:
            if re.search(r'^\s+(ret$|reti$|lcall|acall|ljmp|ajmp|sjmp)', line):
                end_line_maybe = i
                print(f'matched end maybe at {i}')
                continue
        if end_line_maybe is not None and end_line_maybe <= i:
            if re.search(r'^;-{22}', line) or re.search(r'^\s+\.area CSEG\s+', line):
                print(f'matched --- or .area CSEG at {i-1}')
                func = TreeNode(func_name, module, local_vars, start_line, i - 1)
                print(f'end line at {i-1}\n')
                if start_line == i-2:
                    func.empty = True
                func_list.append(func)

                start_line = None
                end_line_maybe = None
                func_name  = None
                local_vars = []

    # Make globl_list consists the name of global funcs in current module
    # Note: If a function is not declared as .globl, it is local func 
    globl_list = []
    for line in lines:
            matches = re.search(r'^\s+\.globl _(\w+)', line)
            if matches:
                globl_list.append(matches.group(1))
    # Now turn above list of names into lists of TreeNode objects in globl_list and local_list 
    for func in func_list:
        for globl in globl_list:
            if func.name == globl:
                module.globl_list.append(func)
                break
        else:
                module.local_list.append(func)
    TreeNode.module_list.append(module)

   #module.print_globl()
   #module.print_local()
   #print()

    

#------------------- main prog --------------------------------------
# Create an ArgumentParser object
parser = argparse.ArgumentParser(description="This is a dead code optimization tool for sdcc mcs51 port (aka 8051 family).")

# Add the '-d' argument, which takes one string
parser.add_argument("-d", type=str, required=True, help="A directory that contains all .asm files in your project.")

# Add the '-e' argument, which takes multiple strings
parser.add_argument("-e", type=str, nargs="+", help="Additional entry points besides main. For ISRs, for example.")

# Parse the arguments from sys.argv
args = parser.parse_args()
if args.e:
    addi_ep = args.e
else:
    addi_ep = []



# Find out all functions in the provided dir:
process_path(args.d, find_functions_in_file, recursive=True)

# Get the entry points:
entry_point_name_list = ['main',None, 'putchar','getchar','null_sendchar_func'] 
# 'None' is a placeholder for variables inintialization at module level codes (not inside any function)

#qmk_func = ['USB_DeviceInterrupt','Timer0_ISR', 'send_mouse','send_extra','send_keyboard','keyboard_leds','generate_tick_event']
#entry_point_name_list.extend(qmk_func)
entry_point_name_list.extend(addi_ep)

TreeNode.find_entry_points(entry_point_name_list)
print('\nEntry points functions:')
for i in TreeNode.entry_point_list:
    print(f"{i.file.name}:{i.name}") 



# Create the function tree & detect orphan functions
for ep in TreeNode.entry_point_list:
    print(f'\nCreating function call tree for endpoint {ep.file.name}:{ep.name}')
    ep.traverse()
   #ep.print_tree()

#print('\nOrphan functions found :')
#for mod in TreeNode.module_list:
#    for func in mod.local_list + mod.globl_list:
#        if func.is_orphan == True:
#            print(f'{func.file.name}:\t\t{func.name}\t{func.start_line}:{func.end_line}') 
#            print('\tlocal vars:')
#            for var in func.local_vars:
#                print(f'\t{var}')



# remove orphan functions from asm files:
print('\nRemoving orphan functions.')
for mod in TreeNode.module_list:
    print(f'\nChecking module {mod.name}')
    if (not mod.local_list) and (not mod.globl_list):
        shutil.copy(mod.name,f'{mod.name}.mod')
        print('\tThis module contain no func! Just copied the content.')
        continue

    mod.print_globl()
    mod.print_local()
    print('\n Orphan functions found :')
    for func in mod.local_list + mod.globl_list:
        if func.is_orphan == True:
            print(f'\t{func.name}\t{func.start_line}:{func.end_line}') 
            print('\t\tlocal vars:')
            for var in func.local_vars:
                print(f'\t\t{var}')

    with open(mod.name, 'r') as f:
        lines = f.readlines()



    print(f'\n Removing dead codes:')


    # Handle local var mem declaration of orphan func ( .ds <num> ) 
    # TODO handle coressponding local var mem alloc(init) too.

    orphan_local_vars = []
    for func in mod.local_list + mod.globl_list:
        if func.is_orphan is False:
            continue
        else:
            orphan_local_vars.extend(func.local_vars)

    orphan_var_line = None
    orphan_var = None
    for i, line in enumerate(lines,1):
        match = re.search(r'^(\w+):$', line)
        if match and match.group(1) in orphan_local_vars:
            orphan_var_line = i
            orphan_var = match.group(1)
            continue
        if orphan_var_line == i-1:
            if re.search(r'^\s+\.ds\s+\d+$', line):
                lines[i-2] = f';{lines[i-2]}'
                lines[i-1] = f';{lines[i-1]}'
                print(f'\tremoved var declaration {orphan_var}:{i-2}')
                orphan_var_line = None
                orphan_var = None
                continue

        # Handle the orphan declare .globl <var>   
        match = re.search(r'^\s+\.globl (\w+)$', line)
        if match and match.group(1) in orphan_local_vars:
            orphan_var = match.group(1)
            lines[i-1] = f';{lines[i-1]}'
            print(f'\tremoved var decl .globl {orphan_var}:{i-1}')


    for func in mod.local_list + mod.globl_list:
        if func.is_orphan == False:
            continue

        print(f'\tRemoving func def {func.name}:{func.start_line}')
        for i, line in enumerate(lines,1):

            # Handle the orphan declare .globl <func>   
            match = re.search(r'^\s+\.globl _(\w+)$', line)
            if match:
                for mod2 in TreeNode.module_list:
                    for func2 in mod2.globl_list:
                        if func2.is_orphan is True and match.group(1) == func2.name:
                            lines[i-1] = f';{lines[i-1]}'
                            print(f'\tremoved func decl .globl {func2.name}:{i-1}')
                continue

           ## Handle global var decleration of orphan func in other modules 
           #match = re.search(r'^_(\w+)$', line)
           #if match:
           #    for mod2 in TreeNode.module_list:
           #        for func2 in mod2.globl_list:
           #            if func2.is_orphan is True and match.group(1) == func2.name:
           #                lines[i-1] = f';{lines[i-1]}'
           #                print(f'\tremoved var decl .globl {func2.name}:{i-1}')
           #    continue

            # Handle the orphan <func> definition  
            if i < func.start_line:
                continue
            if i > func.end_line:
                break
            lines[i-1] = f';{lines[i-1]}'


    # Handle the arX

    # Build a list of module start lines:
    first_non_orphan = None
    all_func = mod.local_list + mod.globl_list
    sorted_func = sorted(all_func,key = lambda x: x.start_line)
    if sorted_func[0].name is None:
        sorted_func.pop(0) #remove the dummy function (module level codes)

    if sorted_func:
        # Find first non orphan func
        for func in sorted_func:
            if func.is_orphan == False:
                first_non_orphan = func
                break
        # If there's no such func, or that func is the first one in the file, no modification needed.
        if first_non_orphan is None:
            pass
        elif first_non_orphan == sorted_func[0]:
            pass
        # Else, add the arX to the remaining first non orphan one
        else:
            for i, line in enumerate(lines,1):
                if i == first_non_orphan.start_line:
                    lines = lines[:i] + arX + lines[i:]
                    print(f'\tAdded ar0->ar7 init at line {i}')



   #shutil.move(func.file,f'{func.file}.bk')
    with open(f'{mod.name}.mod', 'w') as f:
        f.writelines(lines)





# Some Extra Utility Features:

#for i in [1,2,3,4,5,6,7,8]:
for i in [1]:
    print(f"\n\n Functions called only {i} times:")
    for mod in TreeNode.module_list:
        for func in mod.local_list + mod.globl_list:
            if len(func.parents) == i:
                print(f'\t{func.file.name}:{func.name}:{func.start_line}')
                print(f'\tcaller:{func.parents[0].file.name}:{func.parents[0].name}:{func.parents[0].start_line}')
                print()

print(f"\n\n Empty functions :")
for mod in TreeNode.module_list:
    for func in mod.local_list + mod.globl_list:
        if func.empty is True:
            print(f'\t{func.file.name}:{func.name}:{func.start_line}')

def depth (node):
  if node.empty is True: # base case: empty tree has depth 0
    return 0
  else: # recursive case: depth is max of children's depths + 1
    max_depth = 0 # initialize the maximum depth to 0
    for child in node.children: # loop over the list of children
      child_depth = depth (child) # get the depth of each child
      if child_depth > max_depth: # update the maximum depth if needed
        max_depth = child_depth
    return max_depth + 1 # return the maximum depth plus 1



print("\n\n Max estimated function call depth: ")

##find mainfunc 
#mainfunc = None
#for func in TreeNode.entry_point_list :
#    if func.name == "main":
#        mainfunc = func
#        break
#print(depth(mainfunc)) this shit got me segmentation fault. damn. stack overflow while trying to calculate stack overflow, how irony

max_depth = 0
for mod in TreeNode.module_list:
    for func in mod.globl_list + mod.local_list:
        if func.is_orphan is True: 
            continue
        if not func.children:
            print(f'{func.name}:{func.depth}')
        if func.depth > max_depth:
            max_depth = func.depth
print(max_depth)
