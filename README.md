# Automate installs
This is a repo to keep my dotfiles and instalations scripts

## Adding files:

Add all the dotfiles you want to save in the files_list file, then run ./add_files.py this will create hard links for the files (at $HOME) inside the dotfiles folder, this in order to push them to the repo.

## Copying files

To copy the files to your $HOME from the dotfiles folder run ./config_install.py

## Why hard links?

To keep the changes between the dotfiles folder and $HOME folder

### Make the files executable first:

```sh
 chmod +x ./add_files.py
 chmod +x ./config_install.py
```
