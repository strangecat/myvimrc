autocmd! bufwritepost .vimrc source %

" bind hot-key to move around splitted windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" bind hot-key to switch tab
map <Leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>

call pathogen#infect()
call pathogen#helptags()

syntax on                           " syntax highlighing
" load color schema
if has('gui_running')
	set background=light
    colorscheme solarized
else
    set t_Co=256
	color wombat256mod
endif

filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

set tabstop=4 softtabstop=4 shiftwidth=4 shiftround expandtab 

set foldlevel=99

" Settings for ctrlp
let g:ctrlp_max_height=30
set wildignore+=*.pyc

let g:pyflakes_use_quickfix=0
let g:pep8_map='<leader>8'

map <leader>n :NERDTreeToggle<CR>

set number
set nofoldenable

let g:jedi#autocompletion_command="<C-o>"

map <silent> <F9> : TlistToggle<cr>
