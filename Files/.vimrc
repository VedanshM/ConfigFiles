" Basic tweaks
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set mouse=a
syntax on
set nu
set rnu
filetype plugin indent on
inoremap jk <ESC>

"""""""""""""""""""""""""""""" for compilation and run
    if filereadable("Makefile")
            set makeprg=make
    else
        autocmd FileType python     set makeprg=echo\ OK
        autocmd FileType c          set makeprg=gcc\ -g\ -Wall\ -Wno-sign-compare\ %
        autocmd FileType cpp        set makeprg=g++\ -g\ -Wall\ -Wno-sign-compare\ %
    endif

                                nnoremap <F8> <ESC>:w<CR><ESC>:!./%<CR>
                                inoremap <F8> <ESC>:w<CR><ESC>:!./%<CR>
    autocmd FileType c          nnoremap <F8> <ESC>:w<CR><ESC>:!./a.out<CR>
    autocmd FileType c          inoremap <F8> <ESC>:w<CR><ESC>:!./a.out<CR>
    autocmd FileType cpp        nnoremap <F8> <ESC>:w<CR><ESC>:!./a.out<CR>
    autocmd FileType cpp        inoremap <F8> <ESC>:w<CR><ESC>:!./a.out<CR>
    autocmd FileType python     nnoremap <F8> <ESC>:w<CR><ESC>:!python3 %<CR>
    autocmd FileType python     inoremap <F8> <ESC>:w<CR><ESC>:!python3 %<CR>

    inoremap <C-F9> <ESC>:w<CR><ESC>:make<CR>
    nnoremap <C-F9> <ESC>:w<CR><ESC>:make<CR>

    inoremap <F9> <ESC>:w<CR><ESC>:silent make<CR>:call feedkeys("\<F8>")<CR>
    nnoremap <F9> <ESC>:w<CR><ESC>:silent make<CR>:call feedkeys("\<F8>")<CR>
	"  map <F5> :w<CR> :<C-U>!clear; g++ -Wall -Wno-sign-compare -g -fsanitize=undefined % && ./a.out <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"call plug#begin('~/.vim/plugged')
"	"autocompletes
"	Plug 'ycm-core/YouCompleteMe'
"	Plug 'jiangmiao/auto-pairs'
"	Plug 'tweekmonster/startuptime.vim'
"	"color schemes
"
"call plug#end()


"for ycm
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-10.so.1'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

