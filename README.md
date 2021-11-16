# dotfiles

Install [oh-my-zsh](https://ohmyz.sh).

Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).

Install [Ag](https://github.com/ggreer/the_silver_searcher)

```
brew install the_silver_searcher
```

Install [fzf](https://github.com/junegunn/fzf)

```
brew install fzf
$(brew --prefix)/opt/fzf/install
```

Create a symbolic link to `zshrc`

```
ln -s -f ~/dotfiles/zshrc ~/.zshrc
```

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
```
