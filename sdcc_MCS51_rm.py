#!/usr/bin/python3

import os
import sys
import re
import itertools

match_jump = re.compile(r'^\s+(acall|lcall|ljmp|ajmp|sjmp)\s+_(\w+)$')

class TreeNode:
    func_list = []
    orphan_func_list = []
    entry_point_list = []
    def __init__(self, name, file, start_line, end_line):
        self.name = name
        self.file = file
        self.start_line = start_line
        self.end_line = end_line
        self.children = []
        self.processed = False

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

    @classmethod
    def find_entry_points(cls,entry_point_name_list):
       #cls.entry_point_list = [obj for obj in cls.func_list if obj['name'] in entry_point_name_list]
        for obj in cls.func_list:
            for ep_name in entry_point_name_list:
                if obj.name == ep_name:
                    cls.entry_point_list.append(obj)

    def find_children(self):
        print(f'\nfinding children for {self.name}')
        with open(self.file, 'r') as f:
            lines = f.readlines()
        for i, line in enumerate(lines,1):
            if i <= self.start_line:
               #print(f'{i} cont')
                continue
            if i > (self.end_line+1):
               #print(f'{i} break')
                break
            matches = match_jump.search(line)
            if matches:
               #print(f'found {match}')
                for obj in TreeNode.func_list:
                    if obj.name == matches.group(2):
                        self.add_child(obj)
                        for obj2 in TreeNode.orphan_func_list:
                            if obj2.name == obj.name:
                                TreeNode.orphan_func_list.remove(obj2)

            
        


def find_function_pairs(filename):
    if not filename.endswith('.asm'):  # Process asm files only
        return
    with open(filename, 'r') as f:
        lines = f.readlines()

    start_line = None
   #end_line = None
    end_line_maybe = False
    func_name  = None

    for i, line in enumerate(lines,1):
        matches = re.search(r'^;\s+function (\w+)$', line)
        if matches:
           #print(f'matched at {line}')
            start_line = i + 2
            func_name  = matches.group(1)
        elif start_line is not None:
            if re.search(r'^\s+(ret$|lcall|acall|ljmp|ajmp|sjmp)', line):
               #print(f'matched at {line}')
                end_line_maybe = True
        if end_line_maybe is True:
            if re.search(r'^;-{22}', line) or re.search(r'^\s+\.area CSEG\s+', line):
               #print(f'matched at {line}')
               #end_line = i-1
                TreeNode.func_list.append(TreeNode(func_name, filename, start_line, i -1))
                start_line = None
                end_line_maybe = False
                func_name  = None

#   If a function is not declared in .globl, it is local func, keep it, 
#   TODO this part is not working yet. 
#   the program currently cannot works when there's local func.
    globl_list = []
    for line in lines:
            matches = re.search(r'^\s+\.globl _(\w+)', line)
            if matches:
                globl_list.append(matches.group(1))
   #print(f'globl list {globl_list}')

    new_list = [i for i in TreeNode.func_list if i.name not in [j for j in globl_list]]
   #for i in new_list:
   #    print(i.name) 
    


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


process_path(sys.argv[1], find_function_pairs, recursive=True)
for i in TreeNode.func_list:
    print(f'{i.file} {i.name}')# {i.start_line} {i.end_line}') 

# Get the entry points:
entry_point_name_list = ['main']
#entry_point_list = [obj for obj in TreeNode.func_list if obj['name'] in entry_point_name_list]
TreeNode.find_entry_points(entry_point_name_list)
print('\nEntry points functions:')
for i in TreeNode.entry_point_list:
    print(i.name) 

# init orphan function list 
TreeNode.orphan_func_list = TreeNode.func_list.copy()
for obj in TreeNode.orphan_func_list:
    for ep_obj in TreeNode.entry_point_list:
        if obj.name == ep_obj.name:
            TreeNode.orphan_func_list.remove(obj)

# Create the function tree & detect orphan functions
for ep in TreeNode.entry_point_list:
    print(f'\nCreating function call tree for ep {ep.name}')
    ep.traverse()
    ep.print_tree()

# remove orphan functions from asm files:
print('\nOrphan functions found:')
for func in TreeNode.orphan_func_list:
    print(func.name) 

    with open(func.file, 'r') as f:
        lines = f.readlines()

    for i, line in enumerate(lines,1):
        match = re.search(r'^\s+\.globl _(\w+)$', line)
        if match:
            if match.group(1) == func.name:
                lines[i-1] = f';{lines[i-1]}'

        if i < func.start_line:
            continue
        if i > func.end_line:
            break
        lines[i-1] = f';{lines[i-1]}'

   #shutil.move(func.file,f'{func.file}.bk')
    with open(f'{func.file}', 'w') as f:
        f.writelines(lines)

