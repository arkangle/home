" Configuration file for vim
"set runtimepath=$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
"set runtimepath=$VIM/vimfiles,$VIMRUNTIME,$HOME/.vim,$HOME/.vim/after
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=indent,eol,start	" more powerful backspacing
filetype off
call plug#begin()
Plug 'vim-scripts/vividchalk.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/The-NERD-tree'
Plug 'vim-scripts/Printer-Dialog'
Plug 'vim-scripts/fugitive.vim'
Plug 'vim-scripts/surround.vim'
Plug 'vim-scripts/smarty-syntax'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'hynek/vim-python-pep8-indent'
Plug 'joonty/vdebug'
Plug 'vim-scripts/gnupg.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby'


call plug#end()

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
nmap <C-p> :FZF<CR>
nmap <tab> gt
nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
nmap <F3> :set foldmethod=indent<CR>:set foldlevel=1<CR>:set foldnestmax=2<CR>
nmap <F4> :set foldmethod=indent<CR>:set foldlevel=0<CR>:set foldnestmax=2<CR>
nmap <space> 
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
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

colo vividchalk

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
 syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
 set background=dark

filetype indent plugin on

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set winminheight=0 
set nohlsearch
