"https://www.digitalocean.com/community/tutorials/how-to-use-vundle-to-manage-vim-plugins-on-a-linux-vps

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'kana/vim-operator-user.git'
Plugin 'rhysd/vim-clang-format.git'
"Plugin 'scrooloose/nerdtree.git'

filetype plugin indent on

"From Dax
let g:clang_format#detect_style_file = 1
"nmap <leader>cf :ClangFormat<CR>

"My config
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab 

"set mouse=a

set paste
set ruler
set number
set hlsearch

"Clang formating"
:nnoremap <silent> <F4> :ClangFormat<CR>
"Get rid of white spaces"
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

colorscheme elflord
