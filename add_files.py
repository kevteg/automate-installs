#!/usr/bin/env python

import os, errno
#Files will be search at $HOME 
files_path = './dotfiles'
files_names = open('./files_list', 'r')
files_paths = [{'current': os.path.join(os.environ['HOME'], f.replace('\n','')),
                'destination': os.path.join(files_path, f.replace('\n','')),
                'name': f.replace('\n','')} for f in files_names]

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






