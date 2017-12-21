" Filetype dection
filetype on
" Load plugin with types
filetype plugin on

" Turn off vi compatible
set nocompatible
    
" Enable mouse
set mouse=a

" Set spell
set spell

" Set row number 
set nu
set relativenumber

" Delete any char
set backspace=2

" Enable syntax 
syntax enable

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Ignore case when search
set ignorecase    
" Incremental search
set incsearch
set smartcase
" Highlight search
set hlsearch
" noh
nnoremap <Leader><space> :noh<Enter>

" Show current row and col
set cursorline
set cursorcolumn

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

"Copy and paste
vnoremap <Leader>y "+y
nmap <Leader>p "+p

" Displaying status line always
set laststatus=2
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Indent file with types
filetype indent on
" Tab to 4 spaces
set expandtab
set tabstop=4
" Automatic identation
set shiftwidth=4
" Delete 4 spaces as a tab
set softtabstop=4

" Security
"set modelines=0

" Source .vimrc automatically
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Vim built-in man page
source $VIMRUNTIME/ftplugin/man.vim

" vundle 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Lokaltog/vim-powerline' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

" vim-colors-solarized
colorscheme solarized

" vim-powerline
let g:Powerline_colorscheme='solarized256'

" vim-indent-guides 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" nerdtree
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=22
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" YCM
"let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_conf'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
