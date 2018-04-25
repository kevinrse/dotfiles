"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle setup stuff ..... from https://github.com/VundleVim/Vundle.Vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " " " " " " " " The following are examples of different formats supported.
" " " " " " " " " Keep Plugin commands between vundle#begin/end.
" " " " " " " " " plugin on GitHub repo
" " " " " " " " Plugin 'tpope/vim-fugitive'
" " " " " " " " " plugin from http://vim-scripts.org/vim/scripts.html
" " " " " " " " " Plugin 'L9'
" " " " " " " " " Git plugin not hosted on GitHub
" " " " " " " " Plugin 'git://git.wincent.com/command-t.git'
" " " " " " " " " git repos on your local machine (i.e. when working on your own plugin)
" " " " " " " " Plugin 'file:///home/gmarik/path/to/plugin'
" " " " " " " " " The sparkup vim script is in a subdirectory of this repo called vim.
" " " " " " " " " Pass the path to set the runtimepath properly.
" " " " " " " " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " " " " " " " " Install L9 and avoid a Naming conflict if you've already installed a
" " " " " " " " " different version somewhere else.
" " " " " " " " " Plugin 'ascenator/L9', {'name': 'newL9'}

" KF Supertab
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" end of vundle stuff



" The following is just needed for vimrplugin to prevent automatic conversion of _ to <- 
let vimrplugin_assign = 0


" This is for easyalign which doesn't work at the moment
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" always show status line
" this is required for vim-airline
set laststatus=2

"Allow more colors
" this is required for vim-airline
set t_Co=256

" turn off line numbers
set nonumber

" solarized color palette
" see:
"   https://www.if-not-true-then-false.com/2012/solarized-linux/
syntax enable
set background=dark
colorscheme solarized



"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"https://stackoverflow.com/questions/9166328/how-to-copy-selected-lines-to-clipboard-in-vim
"This setting causes yanking to put text in a global buffer so I can yank and
"put from one Vim instance to another.
set clipboard=unnamedplus

" Turn on highlighting of matching brackets/parents
DoMatchParen

" Set dictionary for autocompletion using CTRL-X CTRL-K
set dictionary+=/usr/share/dict/american-english

" and thesaurus, using CTRL-X CTRL-T.....
" this thesaurus is from https://github.com/moshahmed/vim/tree/master/thesaurus
"set thesaurus+=~/gits/moshahmed-vim-thesaurus/thesaurus/thesaurii.txt
" ...and this thesaurus is from https://github.com/hunspell/mythes
set thesaurus+=~/gits/mythes/th_en_US_new.dat

" tab settings
set tabstop=2
set expandtab
set shiftwidth=2 " for using <<, >>, or ==
filetype plugin indent on "enables smart indentation

" enabling omni-completion CTRL-X CTRL-O
filetype plugin on
set omnifunc=syntaxcomplete#Complete
