let mapleader=','

" Folding
noremap <F3> zM
noremap <F4> zR

" Make Y consistent with C and D
nnoremap Y y$

" Make <CR> clear the highlight
nnoremap <CR> :nohls<CR>:set hls?<CR><CR>

" Show all buffers
nnoremap <silent> ,ls :ls!<CR>
" Delete current buffer
nnoremap <silent> ,bd :bd!<CR>
" Delete all buffers
nnoremap <silent> ,da :exec "1," . bufnr('$') . "bd"<CR>
" Toogle list characters
nnoremap <silent> ,ll :set invlist<CR>:set list?<CR>

" Sorting selected text
vnoremap ,ss :sort<CR>

nmap K <nop>
nmap Q <nop>
nmap <up> <nop>
nmap <right> <nop>
nmap <down> <nop>
nmap <left> <nop>
let mapleader=','
noremap <F3> zM
noremap <F4> zR
nnoremap Y y$
noremap ,ff :IndentAllFile<CR>
nnoremap <CR> :nohls<CR>:set hls?<CR><CR>
nnoremap <silent> ,ls :ls!<CR>
nnoremap <silent> ,bd :bd!<CR>
nnoremap <silent> ,da :exec "1," . bufnr('$') . "bd"<CR>
nnoremap <silent> ,ll :set invlist<CR>:set list?<CR>
noremap <F7> <esc>:set invspell<CR>
noremap <F6> zg
noremap <F8> z=
vnoremap ,ss :sort<CR>
nmap K <nop>
nmap Q <nop>
nmap <up> <nop>
nmap <right> <nop>
nmap <down> <nop>
nmap <left> <nop>
