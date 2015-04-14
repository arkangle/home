" Configuration file for vim
"set runtimepath=$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
"set runtimepath=$VIM/vimfiles,$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
set t_Co=256
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'vividchalk.vim'
Plugin 'ctrlp.vim'
Plugin 'The-NERD-tree'
Plugin 'Printer-Dialog'
Plugin 'fugitive.vim'
Plugin 'surround.vim'
Plugin 'smarty-syntax'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'shawncplus/phpcomplete.vim'
call vundle#end()

" Now we set some defaults for the editor 
" set linebreak		" Don't wrap words by default
set textwidth=0		" Don't wrap lines by default 
"set backupcopy=yes	" Keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
			" 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set nowrap
set number
set autoindent		" always set autoindenting on
set expandtab
set smarttab
nmap <tab> gt
nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
nmap <F3> :set foldmethod=indent<CR>:set foldlevel=1<CR>:set foldnestmax=2<CR>
nmap <F4> :set foldmethod=indent<CR>:set foldlevel=0<CR>:set foldnestmax=2<CR>
nmap <space> 
let g:ctrlp_prompt_mappings = {  'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'], }
"let g:SuperTabDefaultCompletionType = "<c-tab>"
let g:SuperTabDefaultCompletionType = "context"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ycm_key_list_select_completion=["<Enter>"]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let delimitMate_expand_cr = 1
" prtdialog
let g:prd_paperIdx      = 7
let g:prd_lineNrIdx     = 2
let g:prd_wrapIdx       = 2
let g:prd_leftIdx       = 2
let g:prd_rightIdx      = 1
vmap <silent> <F5> <Plug>PRD_PrinterDialogVisual
nmap <silent> <F5> <Plug>PRD_PrinterDialogNormal

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Make p in Visual mode replace the selected text with the "" register.
"vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

colo vividchalk

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
 syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
 set background=dark

filetype indent plugin on

" Some Debian-specific things
augroup filetype
  au BufRead reportbug.*		set ft=mail
  au BufRead reportbug-*		set ft=mail
augroup END
"autocmd CompleteDone * pclose
" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set winminheight=0 
