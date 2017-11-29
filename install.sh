#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
# ln -s ${BASEDIR}/vim/ ~/.vim

# tmux
# ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# git
# ln -s ${BASEDIR}/gitconfig ~/.gitconfig
