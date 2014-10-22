# Copies dotfiles over to home directory

#!/bin/bash
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile
cp ctags ~/.ctags
cp git-completion.sh ~/.git-completion.sh
cp git-prompt.sh ~/.git-prompt.sh
cp gitconfig ~/.gitconfig
cp gitignore ~/.gitignore
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp -R vim ~/.vim

# Syncs current state of dotfiles to dotfiles dir
