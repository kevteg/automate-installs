#!/usr/bin/env python

import os, errno

files_path = './dotfiles'
print("Creating hard links of files")
files_paths = [{'current': os.path.join(os.getcwd(), os.path.join(files_path, f.replace('',''))),
                'destination': os.path.join(os.environ['HOME'], f),
                 'name': f} for f in os.listdir(files_path)]

for file_path in files_paths:
    print("---")
    print("Creating %s link"% file_path['name'])
    try:
        os.link(file_path['current'], file_path['destination'])
    except OSError, e:
        if e.errno == errno.EEXIST:
            os.remove(file_path['destination'])
            print("Warning, overwriting existing file")
            os.link(file_path['current'], file_path['destination'])
            print("File copied")
        else:
            print("Error generating file")
    else:
        print("File copied")








