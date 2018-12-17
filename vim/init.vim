set number relativenumber
syntax on

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif                                                                                                                                 
call plug#begin('~/.config/nvim/plugged')  

call plug#end()

highlight Comment cterm=bold
