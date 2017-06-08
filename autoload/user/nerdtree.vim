function! user#nerdtree#mirror_toggle()
  try
    if s:tab_has_nerdtree() > 0
      NERDTreeToggle
    else
      call s:mirror_or_create()
    end
  catch
    redraw!
    NERDTree
    call NERDTreeRender()
  endtry
endfunction

function! user#nerdtree#mirror_find()
  let current_window = winnr()
  call s:mirror_or_create()
  exec current_window . "wincmd w"

  NERDTreeFind
endfunction

function! s:mirror_or_create()
  silent NERDTreeMirror

  if s:nerdtree_current_buffer() > 0
    if s:tab_has_nerdtree() > 0
      silent NERDTreeFocus
    else
      silent NERDTreeToggle
    end
  else
    silent NERDTree
    call s:globalize_nerdtree_buffer()
  end
endfunction

function! s:nerdtree_current_buffer()
  if !exists('g:nerdtree_current_buffer')
    call s:globalize_nerdtree_buffer()
  end

  return get(g:, 'nerdtree_current_buffer', -1)
endfunction

function! s:tab_has_nerdtree()
  if s:nerdtree_current_buffer() > 0
    let tab_buffers = filter(tabpagebuflist(), { _, bufid -> bufid == s:nerdtree_current_buffer() })
    return !empty(tab_buffers)
  else
    return -1
  end
endfunction

function! s:globalize_nerdtree_buffer()
  let all_buffers = range(1, bufnr('$'))
  let nerdtree_buffers = filter(all_buffers, 'bufname(v:val) =~ "NERD_tree_\\d\\+"')
  if !empty(nerdtree_buffers)
    let g:nerdtree_current_buffer = nerdtree_buffers[0]
  end
endfunction