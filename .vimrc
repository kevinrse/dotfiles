
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


