set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins should be added between vundle begin and end
call vundle#begin()

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tmhedberg/matchit'
Plugin 'VundleVim/Vundle.vim'
Plugin 'sickill/vim-pasta'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-ragtag'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'nightsense/snow'
Plugin 'morhetz/gruvbox'

" Themes
Plugin 'flazz/vim-colorschemes'
Plugin 'aradunovic/perun.vim'
Plugin 'crusoexia/vim-dracula'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()

syntax on
set t_Co=256
set cursorline
" set background=dark
" colorscheme tango
colorscheme onehalflight
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
set number
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed

" Autostart NERDTree when vim is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Map open NERDTree to Ctrl + N
map <C-n> :NERDTreeToggle<CR>

" Map NERDTree find to Ctrl + I
map <C-i> :NERDTreeFind<CR>

filetype plugin indent on    " required

let g:indentLine_color_term = 239

" JSX Configurations
let g:jsx_ext_required = 0

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
