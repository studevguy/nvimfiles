scriptencoding = 'utf8'
let g:signify_sign_add               = '│'
let g:signify_sign_delete            = '│'
let g:signify_sign_delete_first_line = '│'
let g:signify_sign_change            = '│'
let g:signify_sign_changedelete      = '│'

let g:signify_vcs_list = ['git']

let g:signify_disable_by_default = 0
let g:signify_update_on_bufenter = 1
let g:signify_update_on_focusgained = 1
let g:signify_sign_show_count = 0

nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sN <plug>(signify-prev-hunk)

omap is <plug>(signify-motion-inner-pending)
xmap is <plug>(signify-motion-inner-visual)
omap as <plug>(signify-motion-outer-pending)
xmap as <plug>(signify-motion-outer-visual)
