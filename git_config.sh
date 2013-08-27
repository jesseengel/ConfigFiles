#! /bin/bash

git add -A .emacs.d/
git add .emacs
git add .bash_profile
git add .bashrc
git add git_config.sh
git add .gitignore

git rm --cached -r .emacs.d/.saves/
git rm --cached -r .emacs.d/auto-save-list/

git status

echo "Done!"
