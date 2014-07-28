if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Tools
NeoBundle 'kassio/vim-session_manager'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'kassio/vim-tmux-runner'
NeoBundle 'mhinz/vim-signify'

" Unite
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'mac' : 'make clean; make -f make_mac.mak',
      \     'unix' : 'make clean; make -f make_unix.mak'
      \    }
      \ }

" textobjs
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'paradigm/TextObjectify'

" Snippets
NeoBundle 'sirver/ultisnips'

" Tomdoc
NeoBundle 'wellbredgrapefruit/tomdoc.vim'

" HTML, javascript
NeoBundle 'othree/html5.vim'
NeoBundleLazy 'jelera/vim-javascript-syntax', {
      \ 'autoload': { 'filetypes': ['javascript'] }
      \ }
NeoBundleLazy 'guileen/simple-javascript-indenter', {
      \ 'autoload': { 'filetypes': ['javascript'] }
      \ }

" Ruby
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'

" Elixir
NeoBundleLazy 'elixir-lang/vim-elixir', { 'autoload': { 'filetypes': ['elixir'] } }

" Puppet
NeoBundle 'rodjek/vim-puppet'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
