""" dein.vim
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Color scheme
  call dein#add('haishanh/night-owl.vim')

  " useful plugins
  call dein#add('preservim/nerdtree')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-airline/vim-airline')
  call dein#add('easymotion/vim-easymotion')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

""" settings
colorscheme night-owl
set number
set autochdir

""" key mappings
nnoremap <silent><C-e> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
