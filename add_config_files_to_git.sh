#! /bin/bash

echo "Here we go..."

git add -A .emacs.d/
git add .emacs
git add .bash_profile
git add .bashrc

git add add_config_files_to_git.sh
git add .gitignore
git add .gitmodules

git rm --cached -r .emacs.d/.saves/
git rm --cached -r .emacs.d/auto-save-list/
git rm --cached -r ./Library/Preferences/Aquamacs\ Emacs/

git status

