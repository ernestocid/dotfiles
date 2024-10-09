" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins should be added between vundle begin and end
call vundle#begin()

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'mileszs/ack.vim'
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
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
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
Plugin 'udalov/kotlin-vim'
Plugin 'junegunn/fzf.vim'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'catppuccin/vim', { 'as': 'catppuccin' }
Plugin 'ayu-theme/ayu-vim'
Plugin 'catppuccin/vim', { 'as': 'catppuccin' }

call vundle#end()

syntax on
set t_Co=256
set cursorline

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" set background=dark
colorscheme catppuccin_mocha
" Theme configuration
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
" set background=dark
" colorscheme PaperColor

" let g:lightline = { 'colorscheme': 'palenight' }
" let g:airline_theme = "palenight"

let g:lightline = {'colorscheme': 'catppuccin_mocha'}
let g:airline_theme = 'catppuccin_mocha'

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
set clipboard=unnamedplus
set laststatus=2

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

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Use fzf https://github.com/junegunn/fzf
set rtp+=/opt/homebrew/opt/fzf
" Maping :FZF to Ctrl+P
nnoremap <silent> <C-p> :FZF<CR>

" Use Ag with ack.vim plugin
let g:ackprg = 'ag --nogroup --nocolor --column'
