nnoremap <silent> <c-p> :FZF<cr>
nnoremap <silent> <c-n> :BLines<cr>
nnoremap <silent> <c-k> :Buffers<cr>

let g:fzf_buffers_jump = 1

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.fzf-history'

if has('nvim')
  aug fzf_setup
    au!
    au TermOpen term://*FZF tnoremap <silent> <buffer> <esc><esc> <c-c>
  aug END
end