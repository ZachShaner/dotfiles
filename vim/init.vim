set number relativenumber
syntax on

"auto-install vim-plug if not present
if empty(glob('~/.config/nvim/autoload/'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif                                                                                                                                 

"Vim_Plug Plugins
call plug#begin('~/.config/nvim/plugged')  
	Plug 'mhinz/vim-startify'
	Plug 'ap/vim-css-color'
call plug#end()

let g:startify_custom_header = [
	    \ "  88             88888888ba                                     88               ",
	    \ "  ^^             88      '8b                                    88               ",
	    \ "                 88      ,8P                                    88               ",
	    \ "  88  888888888  88aaaaaa8P'  ,adPPYYba,  8b,dPPYba,    ,adPPYb,88  ,adPPYYba,   ",
	    \ "  88       a8P'  88^^^^^^'    ^^     `Y8  88P'    `8a  a8'    `Y88  ''     `Y8   ",
	    \ "  88    ,d8P'    88           ,adPPPPP88  88       88  8b       88  ,adPPPPP88   ",
	    \ "  88  ,d8'       88           88,    ,88  88       88  '8a,   ,d88  88,    ,88   ",
	    \ "  88  888888888  88           `l8bbdP'Y8  88       88   `l8bbdP'Y8  `l8bbdP'Y8   ",
	    \ ]                                                                         
highlight StartifyHeader ctermfg=33 



highlight Comment cterm=bold
