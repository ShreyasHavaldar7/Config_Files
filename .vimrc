"Shreyas Havaldar
" Misc {{{ 
"To enable syntax highlighting
syntax enable
" To get rid of bad habits
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" }}}
" Colour Scheme {{{
set background=dark
colorscheme solarized
" }}}
"Spaces {{{
set tabstop=4 "1 tab = 4 visual spaces
set softtabstop=4 " while editing
set expandtab " tabs are spaces uniformly
set ai "Auto Indent
set si " Smart Indent
" }}}
"UI {{{ 
set number " show line numbers
set showcmd " show command at the bottom
set cursorline " marks current line
filetype indent on " load file specific indent
set wildmenu " autocomplete for commands
set lazyredraw " draw only when necessary
set showmatch " match brackets
" }}}
"Search {{{

set incsearch " AS characters entered
set hlsearch " highlight 

nnoremap <leader><space> :nohlsearch<CR>
" After search done, turn off the highlights
" }}}
" Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10

" space to toggle folds
nnoremap <space> za
set foldmethod=indent
" }}}
" Copy-paste {{{

noremap Y "+y
noremap P "+p


" }}}
" Movement {{{
" Actual lines jump not sentences
"nnoremap j gj
"nnoremap k gk 

" Moving to beginning or end of line

nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" Highlight last inserted text
nnoremap gV `[v`]
" }}}
" Window Switching {{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}
" Leader shortcuts {{{
let mapleader="," "Make comma the leader for easy reach

" Change esc key
inoremap jk <esc>
" Save sessions nnoremap <leader>s :mksession<CR>

" }}}
" Vim Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"}}}
" Airline {{{
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
" }}}
" Syntastic {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 
let g:syntastic_error_symbol = "✗✗"
let g:syntastic_warning_symbol = "⚠⚠"
" }}}
" COC {{{
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh() 
" }}}    
" Autogroups {{{
" }}}
" Buffer Saving {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
set modelines=1
" vim:foldmethod=marker:foldlevel=0
