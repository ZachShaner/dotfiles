set number relativenumber
syntax on

call plug#begin('~/.config/nvim/plugged')
	Plug 'sentientmachine/Pretty-Vim-Python'
call plug#end()

colorscheme molokai
highlight Comment cterm=bold
