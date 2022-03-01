:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'https://github.com/preservim/nerdtree' " Nerd tree
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/tpope/vim-commentary' " For commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " Css Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Themes
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for Navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " Ctrl + N for Multiple cursor
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/romgrk/barbar.nvim' " Topbar display


call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-1> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For no Previews

let g:NERDTreeDirArrowExpendable  = "+"
let g:NERDTreeDirArrowCollapsible = "~"

inoremap <expr> <tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
