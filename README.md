# dotfiles

Install Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install [Homebrew](https://brew.sh/index_pt-br).

Create a symbolic link to `vimrc`

```
ln -s -f ~/dotfiles/vimrc ~/.vimrc
```

Inside vim, run the `:PluginInstall` command.

Install TMUX

```
brew install tmux
```

Create a symbolic link to `tmux.conf`

```
ln -s -f ~/dotfiles/tmux.conf ~/.tmux.conf
``
