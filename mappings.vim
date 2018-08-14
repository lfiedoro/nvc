" Mappings

" Toggle line numbers
noremap <silent> <F12> :set number!<CR>

" Make redraw turn off highlighting
nnoremap <C-l> :noh<CR><C-l>

"Switch between .h and .cpp files
nmap <silent> <leader>h :call SwitchCppH()<CR>

" Disable arrows
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>

" Easymotion
" Bi-directional find motion
nmap  <Space> <Plug>(easymotion-s)

" fzf
" File open
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-n> :Buffers<CR>

" Space bound moving
map <Space>l <Plug>(easymotion-lineforward)
map <Space>j <Plug>(easymotion-j)
map <Space>k <Plug>(easymotion-k)
map <Space>h <Plug>(easymotion-linebackward)

" Keep cursor colum when JK motion
let g:EasyMotion_startofline = 0
