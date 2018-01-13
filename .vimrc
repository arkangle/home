" Configuration file for vim
"set runtimepath=$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
"set runtimepath=$VIM/vimfiles,$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
set t_Co=256
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vividchalk.vim'
Plugin 'rakr/vim-one'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'The-NERD-tree'
Plugin 'Printer-Dialog'
Plugin 'fugitive.vim'
Plugin 'surround.vim'
Plugin 'smarty-syntax'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'joonty/vdebug'
Plugin 'gnupg.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'stephpy/vim-yaml'
Plugin 'hashivim/vim-hashicorp-tools'

call vundle#end()

nmap <C-p> :FZF<CR>
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
set tabstop=2
set shiftwidth=2
nmap <tab> gt
nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
nmap <F3> :set foldmethod=indent<CR>:set foldlevel=1<CR>:set foldnestmax=2<CR>
nmap <F4> :set foldmethod=indent<CR>:set foldlevel=0<CR>:set foldnestmax=2<CR>
nmap <space> 
vnoremap <leader>64 y:let @"=system('base64 -w0', @")<cr>gvP
vnoremap <leader>6d y:let @"=system('base64 --decode', @")<cr>gvP

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"let g:ctrlp_prompt_mappings = {  'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'], }
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
"colo one

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
 syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
"set background=light

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
