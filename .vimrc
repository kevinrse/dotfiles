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
" KF Rust
Plugin 'rust-lang/rust.vim'
" KF YouCompleteMe (Python)
Plugin 'Valloric/YouCompleteMe'
" KF vim-lastplace  -  remember cursor position
Plugin 'farmergreg/vim-lastplace'

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
" colorscheme solarized            " commented out because I don't like solarized... I have to set it up manually and this is a PITA



"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"https://stackoverflow.com/questions/9166328/how-to-copy-selected-lines-to-clipboard-in-vim
"This setting causes yanking to put text in a global buffer so I can yank and
"put from one Vim instance to another.
set clipboard=unnamedplus

" Set dictionary for autocompletion using CTRL-X CTRL-K
set dictionary+=/usr/share/dict/american-english

" and thesaurus, using CTRL-X CTRL-T.....
" this thesaurus is from https://github.com/moshahmed/vim/tree/master/thesaurus
"set thesaurus+=~/gits/moshahmed-vim-thesaurus/thesaurus/thesaurii.txt
" ...and this thesaurus is from https://github.com/hunspell/mythes
set thesaurus+=~/gits/mythes/th_en_US_new.dat

" This is for highlighting misspellings. (At time of this writing
" the american english dictionary doesn't seem to care about words
" such as "summarised" which afaik is not OK in american english
" may want to return to this issue
"
" Command:
"set spell spelllang=en_us

" tab settings
set tabstop=2
set expandtab
set shiftwidth=2 " for using <<, >>, or ==
filetype plugin indent on "enables smart indentation

" enabling omni-completion CTRL-X CTRL-O
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" listchars - what characters to use for whitespace characters when using :set list
"set showbreak=↪\ 
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set listchars=tab:\|_,trail:_,extends:>,precedes:<,nbsp:~
set showbreak=\\ " [bonus]



set ignorecase "KF default case-insensitive searching


" KF YouCompleteMe options..................................
" (see docs)
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" Global python config locator file:
let g:ycm_global_ycm_extra_conf = '/home/kmf76/dotfiles/.ycm_extra_conf.py'




" ############################################################################################################
" KF xml folding things:
" https://stackoverflow.com/questions/32154285/folding-expanding-and-colapsing-xml-tags-in-vim-xml-parsing
"
" The feature you need is called 'folding'.
"
" Basically, you tell Vim to use one of its available 'foldmethod' and manage
" each line's 'foldlevel' with commands like za, zr or zM. You can find all
" the details in :help folding.
"
" Adding these lines to your vimrc should provide a good starting point:
"
augroup XML
  autocmd!
  autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END
"
" With these settings, all folds should be open when you load a file,
" the fold level of each line should be derived from its indentation
" and you should be able to fold away single lines.
"
" Use zm to fold more, zr to fold less, zc to close a fold, zo to open
" it, za to toggle between those two states, zM to close every fold,
" zR to open them and so on…
"
" Documentation:
"
"   :help folding
"   :help 'foldmethod'
"   :help 'foldlevelstart'
"   :help 'foldminlines'
"






