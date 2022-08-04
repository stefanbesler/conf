" Automatic reloading of .vimrc
"autocmd! bufwritepost .vimrc source % 

set pastetoggle=<F2>
set bs=2
set laststatus=2
set clipboard+=unnamedplus  " use the clipboards of vim and x 
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
set autowrite
set noswapfile
set textwidth=120
set nocompatible
syntax on
filetype on
filetype plugin indent on

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use tabs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent

set mouse=a
set nu

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Define the leader key
let mapleader = ","
call pathogen#infect()
color molokai


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" MOVEMENT                                                                  ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move through tabs with Ctrl + movement key
nmap <C-l> gt
nmap <C-h> gT

" Move through splits, press g + movement key
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Move a line along tabspaces
nnoremap <Tab> v>
nnoremap <S-Tab> v<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" use W to save with root privileges
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command! Wq :execute ':silent w !sudo tee % > /dev/null' | :q

" run scripts
nnoremap <silent> <F5> :!clear;python %<CR>

" powerline
set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
let g:Powerline_symbols = 'fancy'

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags
" TAG JUMPING:

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list


" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

