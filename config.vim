
filetype off 
source ~/.vim/packages.vim  " Package management courtesy of Vundler
filetype plugin indent on

" Core configuration
set hidden
let mapleader = ","
syntax enable 

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=8
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" Tab completion more like bash
set wildmode=longest:full
set wildmenu

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$', '\.swp$']
map <Leader>n :NERDTreeToggle<CR>

" Supertab configuration
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" UltiSnips configuration
set runtimepath+=~/.vim/bundle/UltiSnips

source ~/.vim/commands.vim
