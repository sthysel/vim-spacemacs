" Functions {{{ 
function! spacemacs#toggleExplorerAtRoot()
  if exists(':ProjectRootExe')
    exe "ProjectRootExe NERDTreeToggle"
  else
    exe "NERDTreeToggle"
  endif
endfunction


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction

" }}}

" files
nmap <LEADER>ff :<C-u>Unite buffer history/yank file file_rec/async file_mru<cr>
nmap <LEADER>fr :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nmap <LEADER>fs :w<CR>
nmap <LEADER>fS :wa<CR>
nmap <LEADER>ft :NERDTreeToggle<CR>

" rc
nmap <LEADER>fed :e $MYVIMRC<CR> 
nmap <LEADER>sv :source $MYVIMRC<CR>

" buffers
nmap <LEADER>bb :buffers<CR>
nmap <LEADER>bd :bdelete<CR>
nmap <LEADER>bn :bn<CR>
nmap <LEADER>bp :bp<CR>
nmap <LEADER>bR :e<CR>

" Git
nmap <LEADER>gb :Gblame<CR>
nmap <LEADER>gd :Gdiff<CR>
nmap <LEADER>gs :Gstatus<CR>
nmap <LEADER>gw :Gwrite<CR>
nmap <LEADER>gp :Git push<CR>
nmap <LEADER>gc :Gcommit<CR>
nmap <LEADER>gt :GitGutterToggle<CR>

" windows
nmap <LEADER>w- :sp<CR>
nmap <LEADER>w/ :vsp<CR>
nmap <LEADER>w= <C-W>=
nmap <LEADER>wc :q<CR>
nmap <LEADER>wh <C-W>h
nmap <LEADER>wj <C-W>j
nmap <LEADER>wk <C-W>k
nmap <LEADER>wl <C-W>l
nmap <LEADER>ws <C-W>s
nmap <LEADER>wv <C-W>v
nmap <LEADER>wm :MaximizerToggle<CR>
nmap <LEADER>ww <C-W><C-W>

nmap <LEADER><TAB> <C-^>
nmap <LEADER>;; :Commentary<CR>
vmap <LEADER>; :Commentary<CR>
nmap <LEADER>pt :call spacemacs#toggleExplorerAtRoot()<CR>
nmap <LEADER>qq :qa<CR>
nmap <LEADER>sp :Ag<SPACE>
nmap <LEADER>tn :set number!<CR>

" more leaders
nnoremap <LEADER>w :w<CR>
" Toggle show/hide invisible chars
nnoremap <LEADER>i :set list!<cr>
" Toggle line numbers
nnoremap <LEADER>N :setlocal number!<cr>
