"dein Scripts-----------------------------

let g:dein_dir = expand("$HOME/dotfiles/dein")
let s:toml = g:dein_dir . "/dein.toml"
let s:lazy_toml = g:dein_dir . "/dein_lazy.toml"
let s:dein_repo_dir = g:dein_dir . "/repos/github.com/Shougo/dein.vim"

if &compatible
  set nocompatible               " Be iMproved
endif

if !isdirectory(s:dein_repo_dir)
  echo "install dein.vim..."
  execute "!git clone git://github.com/Shougo/dein.vim" s:dein_repo_dir 
  execute "!touch -m " . g:dein_dir . "/dein.toml"
  execute "!touch -m " . g:dein_dir . "/dein_lazy.toml"
endif

execute "set runtimepath^=" . s:dein_repo_dir

" Required:
"set runtimepath+=s:dein_repo_dir

" Required:
if dein#load_state(g:dein_dir)
  call dein#begin(g:dein_dir)

  call dein#add('Shougo/dein.vim')

  " Load plugins from toml
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#add('raphamorim/lucario')
  "構文チェックを行う。
  call dein#add('scrooloose/syntastic')
  "()を補間する。
  call dein#add('Townk/vim-autoclose')
  "() 色付け:
  call dein#add('itchyny/lightline.vim')
  "インデントの色付け
  call dein#add('Yggdroot/indentLine')

  call dein#add('justmao945/vim-clang')
  " set clang options for vim-clang
  let g:clang_c_options = '-std=c11'
  let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


set nobackup       " Do not back up files
set tabstop=4      
set autoindent
set expandtab
set shiftwidth=4
set number

" search command list [http://kawatama.net/web/1341]
" Remove search highlights
set hlsearch       


"End dein Scripts-------------------------
