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

" help
nnoremap <Leader>? :Unite output:nmap\ \<Leader\><CR>

" avy using easymotion
nmap <Leader>y <Plug>(easymotion-bd-jk)

" files
nmap <LEADER>fa :<C-u>Unite buffer history/yank file file_rec/async file_mru<cr>
nmap <LEADER>ff :<C-u>Unite file file_rec/async file_mru<cr>
nmap <LEADER>fr :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nmap <LEADER>fs :w<CR>
nmap <LEADER>fS :wa<CR>
nmap <LEADER>ft :NERDTreeToggle<CR>

" undo tree (needs mbbill/undotree plugin)
nnoremap <Leader>au :UndotreeToggle<CR>

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

" reindent
nnoremap <Leader>j= mzgg=G`z
" clear search
nnoremap <Leader>sc :noh<CR>

" commenting
nmap <Leader>;  <Plug>Commentary
vmap <Leader>;  <Plug>Commentary
omap <Leader>;  <Plug>Commentary
nmap <Leader>;; <Plug>CommentaryLine

" errors (with syntastic)
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    SyntasticToggleMode
    " lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        " Errors
        SyntasticCheck
    endif
endfunction
nnoremap <silent> <Leader>el :<C-u>call ToggleErrors()<CR>
nnoremap <silent> <Leader>en :lnext<CR>
nnoremap <silent> <Leader>ep :lprev<CR>

nmap <LEADER><TAB> <C-^>
nmap <LEADER>pt :call spacemacs#toggleExplorerAtRoot()<CR>
nnoremap <LEADER>qq :qa<CR>
nnoremap <Leader>qQ :qa!<CR>
nnoremap <Leader>qs :xa<CR>
nmap <LEADER>sp :Ag<SPACE>
nmap <LEADER>tn :set number!<CR>

" more leaders
nnoremap <LEADER>w :w<CR>
" Toggle show/hide invisible chars
nnoremap <LEADER>i :set list!<cr>
" Toggle line numbers
nnoremap <LEADER>N :setlocal number!<cr>
