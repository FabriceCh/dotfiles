" config file for vim (created manually)
"
" view the filename
 set ls=2

" view line numbers on the side
set number
" line numbers colour
:highlight LineNr ctermfg=grey
" toggle number line on focused / insert mode etc.
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" parentheses colour
" autocmd VimEnter,BufNewFile * syn match parens /[[{}]]/ | hi parens ctermfg=red
" :let loaded_matchparen = 1

" highlight the current line
 "set cul

" enable mouse support
"set mouse=a

" set tabs to 4
set tabstop=4
set shiftwidth=4

" show tabs
:set list lcs=tab:\|\ 

map <Enter> o<ESC>
map <S-Enter> O<ESC>

syntax on

