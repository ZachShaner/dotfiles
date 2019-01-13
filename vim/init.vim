set number relativenumber
syntax on

autocmd BufNewFile,BufRead config setf dosini

"auto-install vim-plug if not present
if empty(glob('~/.local/share/nvim/site/autoload/'))
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
	    \ "  88             88888888ba                                     88              d8'        ",
	    \ "  ^^             88      '8b                                    88             d8'         ",
	    \ "                 88      ,8P                                    88            ^^           ",
	    \ "  88  888888888  88aaaaaa8P'  ,adPPYYba,  8b,dPPYba,    ,adPPYb,88  ,adPPYYba,  ,adPPYba,  ",
	    \ "  88       a8P'  88^^^^^^'    ^^     `Y8  88P'    `8a  a8'    `Y88  ''     `Y8  I8[    ^^  ",
	    \ "  88    ,d8P'    88           ,adPPPPP88  88       88  8b       88  ,adPPPPP88   '^Y8ba,   ",
	    \ "  88  ,d8'       88           88,    ,88  88       88  '8a,   ,d88  88,    ,88  aa    ]8I  ",
	    \ "  88  888888888  88           `l8bbdP'Y8  88       88   `l8bbdP'Y8  `l8bbdP'Y8  '^YbbdP^'  ",
	    \ "                                                                                           ",
	    \ "                                                                                           ",
	    \ "  888b      88                                        88                                   ",
            \ "  8888b     88                                        ^^                                   ",
	    \ "  88 `8b    88                                                                             ",
            \ "  88  `8b   88   ,adPPYba,   ,adPPYba,   8b       d8  88  88,dPYba,,adPYba,                ",
            \ "  88   `8b  88  a8P_____88  a8^     ^8a  `8b     d8'  88  88P'   ^88^    ^8a               ",
            \ "  88    `8b 88  8PP^^^^^^^  8b       d8   `8b   d8'   88  88      88      88               ",
            \ "  88     `8888  '8b,   ,aa  '8a,   ,a8'    `8b,d8'    88  88      88      88               ",
            \ "  88      `888   `^Ybbd8^'   `^YbbdP^'       ^8^      88  88      88      88               ",
	    \ ]                                                                         

highlight StartifyHeader ctermfg=33 



highlight Comment cterm=bold

nnoremap <silent> <CR> :nohlsearch<CR><CR> 
