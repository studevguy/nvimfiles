if exists('b:trailing_spaces_setup_loaded')
  finish
endif
let b:trailing_spaces_setup_loaded=1

let g:keep_trailing_spaces = 0

command! -nargs=? KeepTrailingSpaces
      \ if <q-args> == "" |
      \   let g:keep_trailing_spaces = 1 |
      \ else |
      \   let g:keep_trailing_spaces = str2nr(<q-args>) |
      \ endif

aug remove_trailing_spaces
  au!
  au BufWritePre *
        \ if ! g:keep_trailing_spaces |
        \   call Trim() |
        \ endif
aug END

function! Trim()
  call Preserve('%s/\s\+$//e')
  call Preserve('%s/\v($\n\s*)+%$//e')
endfunction
command! Trim
      \ call Trim()
