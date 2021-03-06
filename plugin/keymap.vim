" faster esc
inoremap <esc> <c-c>
inoremap <C-U> <C-G>u<C-U>

tnoremap <esc><esc> <c-\><c-n>

" Use <c-l> to clear the highlighting of :set hlsearch.
nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

" Delete current buffer
nnoremap <silent> <leader>bd :call buffer#kill()<cr>
" Delete all buffers
nnoremap <silent> <leader>da :silent call buffer#killall()<cr>
" Wipe all buffers
nnoremap <silent> <leader>wa :silent call buffer#wipeall()<cr>

nnoremap <silent> g# #
nnoremap <silent> g* *

nnoremap <silent> ' `
nnoremap <silent> ` '

vnoremap <silent> * :<c-u>call text#highlight_visual()<cr>//<cr>
vnoremap <silent> # :<c-u>call text#highlight_visual()<cr>??<cr>
vnoremap <silent> ! :<c-u>call text#highlight_visual()<cr>
nnoremap <silent> ! :call text#highlight(expand('<cword>'))<cr>
vnoremap <silent> g! :<c-u>call text#highlight('\<'.text#get_visual().'\>')<cr>
nnoremap <silent> g! :call text#highlight('\<'.expand('<cword>').'\>')<cr>
vnoremap <silent> <leader>! :<c-u>call text#highlight_sensitive_visual()<cr>
nnoremap <silent> <leader>! :call text#highlight_sensitive(expand('<cword>'))<cr>

" Tags
nnoremap <silent>g<c-]> :execute 'Tag ' . expand('<cword>')<cr>
vnoremap <silent>g<c-]> :<c-u>execute 'Tag ' . text#get_visual()<cr>
nnoremap <silent><c-]> :execute 'tag ' . expand('<cword>')<cr>
nnoremap <silent>t<c-]> :execute 'tab tag ' . expand('<cword>')<cr>
nnoremap <silent><c-w><c-]> :execute 'stag ' . expand('<cword>')<cr>
nnoremap <silent>v<c-]> :execute 'vert stag ' . expand('<cword>')<cr>

nnoremap K <nop>
nnoremap Q <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Indent all file
nnoremap <silent> <leader>ff :call preserve#preserve('silent normal gg=G')<cr>

" Map to show the highlight name under the cursor
nnoremap <f2> :echo color#current()<cr>

map <S-ScrollWheelUp> <C-U>
map <S-ScrollWheelDown> <C-D>

nmap <silent> <leader>sn :call sign#goto('next')<cr>
nmap <silent> <leader>sN :call sign#goto('previous')<cr>

" Command shortcuts/aliases
cnoremap <c-b> P bufdo %s///ge<left><left><left><left>
