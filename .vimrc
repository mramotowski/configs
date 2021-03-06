set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" added nerdtree
Plugin 'scrooloose/nerdtree'
" It's annoying to delete and paste parts of a text just to move it up and
" down a bit. There is the :m[ove] command but it is quite awkward to use by
" todays standards. vim-move is a Vim plugin that moves lines and selections
" in a more visual manner. Out of the box, the following keys are mapped in
" visual and normal mode:
" <C-k>   Move current line/selections up
" <C-j>   Move current line/selections down
Bundle 'matze/vim-move'

" This plugin adds a :Terraform command that runs terraform, with tab completion
" of subcommands. It also sets up *.tf, *.tfvars, and *.tfstate files to be
" highlighted as HCL, HCL, and JSON respectively.
Plugin 'hashivim/vim-terraform'

" jedi-vim - awesome Python autocompletion with VIM
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" NERDTree
let g:NERDTreeChDirMode = 2 " switch CWD
nmap <silent> <F7> :NERDTreeToggle<CR>

" matze/vim-move
" rebind from not working Alt to Ctrl
let g:move_key_modifier = 'C'

" Show line numbers and ruler
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set number

" Show/Hide whitechars
set list
nmap <silent> <F8> :set list<CR>
nmap <silent> <leader><F8> :set nolist<CR>
set listchars=tab:>-,trail:·,eol:↵
filetype plugin indent on

"Set Tabs"
set tabstop=4
set shiftwidth=4
