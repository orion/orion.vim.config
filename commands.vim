
" Switch between the last two buffers
noremap <Leader>w <C-^><CR>

" Start an interactive python shell
nnoremap <Leader>sh :shell<CR> 
nnoremap <Leader>sp :!python<CR> 

" You almost never mean to get help
noremap <F1> <Esc>

" Swipe for buffers
set hidden
	map <SwipeLeft> :bprev<CR>
	map <SwipeRight> :bnext<CR>

" Command option for buffer switch since we don't use tabs
if has("gui_macvim")
    nnoremap <D-M-Left> :bp!<CR> 
    nnoremap <D-M-Right> :bn!<CR>
endif
