#!/usr/bin/python3

import os
import sys
import re
import itertools

match_jump = re.compile(r'^\s+(acall|lcall|ljmp|ajmp|sjmp)\s+_(\w+)$')
match_ptr  = re.compile(r'^\s+mov\s+\w+,#_(\w+)$')

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
        print(f'\nGlobal func of {self.name} :')
        for func in self.globl_list:
           #print(f'{func.name}')
            print(f'{func.name} {func.start_line} {func.end_line}')
    def print_local(self):
        print(f'\nLocal func of {self.name} :')
        for func in self.local_list:
           #print(f'{func.name}')
            print(f'{func.name} {func.start_line} {func.end_line}')

class TreeNode:
    module_list = []
   #func_list = []
   #orphan_func_list = []
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

    @classmethod
    def print_module(self):
        for mod in self.module_list:
            mod.print_globl()
            mod.print_local()

    def __init__(self, name, file, start_line, end_line):
        self.name = name
        self.file = file
        self.start_line = start_line
        self.end_line = end_line

        self.processed = False
        self.is_orphan = True

        self.children = []

       #self.module_list = Module(file)

    def add_child(self, child_node):
        self.children.append(child_node)

    def remove_child(self, child_node):
        self.children = [child for child in self.children if child != child_node]

    def print_tree(self, level=0):
        print("  " * level + f"|{self.name}")
        for child in self.children:
            child.print_tree(level + 1)

    def traverse(self):
        if self.processed is True:
            return
        self.find_children()
        self.processed = True
        for child in self.children:
            child.traverse()

    def find_children(self):
        print(f'\nfinding children for {self.file.name}:{self.name}')
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
                print(fcall)
                matches = True
            if matches:
                print(f'found func call {fcall} at line {i}')
                # Search for func definition in current module first:
               #for obj in self.file.local_list + self.file.globl_list: #TODO check if the call lead to nowhere/multiple func defs
                for obj in self.file.local_list :
                    if obj.name == fcall:
                        self.add_child(obj)
                        obj.is_orphan = False
                        print(f'match {obj.file.name} at line {obj.start_line}')
                        break
                else:
                    for mod in TreeNode.module_list:
                        for obj in mod.globl_list:
                            if obj.name == fcall:
                                self.add_child(obj)
                                obj.is_orphan = False
                                print(f'match {obj.file.name} at line {obj.start_line}')
                                break

            
        


def find_function_pairs(filename):
    if not filename.endswith('.asm'):  # Process asm files only
        return
    print(f'\nfile {filename}')
    with open(filename, 'r') as f:
        lines = f.readlines()

    func_list  = []
    module = Module(filename)
    start_line = None
   #end_line = None
    end_line_maybe = None
    func_name  = None
    found_func =None

    for i, line in enumerate(lines,1):
        matches = re.search(r"^;.* in function '(\w+)'$", line)
        # add a dummy func for some module level codes
        if matches:
            found_func = i 
           #start_line = i + 2
            func_name  = matches.group(1)
            print(f'found func {func_name} at {i}')
            continue
        matchesdummy = re.search(r'^;\s+global & static initialisations', line)
        if matchesdummy:
            print(f'matched module level codes at line {i}')
            start_line = i + 2
            func_name  = 'module_level_codes'
            end_line_maybe = i + 5
            continue

        if found_func is not None:
            matches = re.search(r'_(\w+):', line)
            if matches and matches.group(1) == func_name:
                start_line = i 
                found_func =   None
                print(f'start line {start_line}')
                continue
            matches = re.search(r'_(\w+):', line)

        elif start_line is not None:
        #   print('hih')
            if re.search(r'^\s+(ret$|lcall|acall|ljmp|ajmp|sjmp)', line):
                end_line_maybe = i
                print(f'matched at {i}:{line}')
                continue
       #if end_line_maybe == (i-1):
        if end_line_maybe is not None and end_line_maybe < i:
            if re.search(r'^;-{22}', line) or re.search(r'^\s+\.area CSEG\s+', line):
               #end_line = i-1
                func_list.append(TreeNode(func_name, module, start_line, i - 1))
                print(f'end line at {i-1}')

                start_line = None
                end_line_maybe = None
                func_name  = None

   #for i in func_list:
   #    print(f'{i.file.name} {i.name} {i.start_line} {i.end_line}') 
    # If a function is not declared in .globl, it is local func, keep it, 
    globl_list = []
    for line in lines:
            matches = re.search(r'^\s+\.globl _(\w+)', line)
            if matches:
                globl_list.append(matches.group(1))
   #print(f'globl list {globl_list}')

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

    


process_path(sys.argv[1], find_function_pairs, recursive=True)

#for mod in TreeNode.module_list:
#    mod.print_globl()
#    mod.print_local()

# Get the entry points:
entry_point_name_list = ['main', 'USB_interrupt', 'Timer0_ISR', 'module_level_codes']
TreeNode.find_entry_points(entry_point_name_list)
print('\nEntry points functions:')
for i in TreeNode.entry_point_list:
    print(f"{i.file.name}:{i.name}") 

for mod in TreeNode.module_list:
   #for func in (mod.local_list + mod.globl_list):
   #    print(f'{func.file.name}:\t\t{func.name}\t{func.start_line}:{func.end_line}') 
    mod.print_globl()
    mod.print_local()

# Create the function tree & detect orphan functions
for ep in TreeNode.entry_point_list:
    print(f'\nCreating function call tree for ep {ep.name}')
    ep.traverse()
    ep.print_tree()

print('\nOrphan functions found :')
for mod in TreeNode.module_list:
    for func in mod.local_list + mod.globl_list:
        if func.is_orphan == True:
            print(f'{func.file.name}:\t\t{func.name}\t{func.start_line}:{func.end_line}') 
print('\nUnprocessed functions :')
for mod in TreeNode.module_list:
    for func in mod.local_list + mod.globl_list:
        if func.processed == False:
            print(f'{func.file.name}:\t\t{func.name}\t{func.start_line}:{func.end_line}') 

# remove orphan functions from asm files:
# TODO delete var used by orphan func, add arX init to the first remaining function
print('\nRemoving orphan functions.')
for mod in TreeNode.module_list:

   #if re.match(r'debug',mod.name) :
   #    pass
   #else:
   #    continue

    with open(mod.name, 'r') as f:
        lines = f.readlines()

    for func in mod.local_list + mod.globl_list:
        if func.is_orphan == False:
            continue
       #if func.name != '
        print(f'Removing {func.name} in {func.file.name}')
        for i, line in enumerate(lines,1):
           #print(line)
            # Handle the orphan declare .globl <func>   
            match = re.search(r'^\s+\.globl _(\w+)$', line)
            if match:
                for mod2 in TreeNode.module_list:
                    for func2 in mod2.globl_list:
                        if func2.is_orphan is True and match.group(1) == func2.name:
                            lines[i-1] = f';{lines[i-1]}'

            # Handle var decleration of orphan func  
            match = re.search(r'^_(\w+)$', line)
            if match:
                for mod2 in TreeNode.module_list:
                    for func2 in mod2.globl_list:
                        if func2.is_orphan is True and match.group(1) == func2.name:
                            lines[i-1] = f';{lines[i-1]}'

            # Handle the orphan <func> definition  
            if i < func.start_line:
           #    print('cont')
                continue
            if i > func.end_line:
           #    print('brk')
                break
            lines[i-1] = f';{lines[i-1]}'
           #print(f'mod:{lines[i-1]}')

   #shutil.move(func.file,f'{func.file}.bk')
    with open(f'{mod.name}.mod', 'w') as f:
        f.writelines(lines)

