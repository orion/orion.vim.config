
filetype off 
source ~/.vim/packages.vim  " Package management courtesy of Vundler
filetype plugin indent on

" Core configuration
set hidden
let mapleader = ","
syntax enable 

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json,*.rb set tabstop=8
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json set shiftwidth=4
" (The Ruby kids like 2-space indent)
au BufRead,BufNewFile *.rb set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json,*.rb set expandtab
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json,*.rb set smarttab
au BufRead,BufNewFile *.tmpl,*.html set filetype=django

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json,*.rb match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.tmpl,*.html,*.css,*.json,*.rb match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.css,*.rb set textwidth=79

" Tab completion more like bash
set wildmode=longest:full
set wildmenu
set wildignore+=*.pyc

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$', '\.swp$']
map <Leader>n :NERDTreeToggle<CR>

" Supertab configuration
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" UltiSnips configuration
set runtimepath+=~/.vim/bundle/UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" Ctrlp configuration
let g:ctrlp_map = '<Leader>ff'
map <Leader>fb :CtrlPBuffer<CR>
map <Leader>fm :CtrlPMRU<CR>

" Ctags/cscope config
set tags=./tags;
cscope add ~/.vim/cscope.out

source ~/.vim/commands.vim
