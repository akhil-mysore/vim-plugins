""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"

" use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
set cscopetag

" check cscope for definition of a symbol before checking ctags: set to 1
" if you want the reverse search order.
" set csto=0

" Use quickfix list for cscope search
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

""""""""""""" key mappings 

" find file
nnoremap \ff :cscope find f

" find definition
nnoremap \gg :cscope find g <cword><cr>

" find symbol
nnoremap \ss :cscope find s <cword><cr>

" find text string
"nnoremap \tt :cscope find t <cword><cr>

" functions calling this function
nnoremap \cc :cscope find c <cword><cr>
" functions called by this function
nnoremap \dd :cscope find d <cword><cr>

" Autoload cscope from parent directory
" Tip# 1668

"function! LoadCscope()
"  let db = findfile("cscope.out", ".;")
"  if (!empty(db))
"    let path = strpart(db, 0, match(db, "/cscope.out$"))
"    set nocscopeverbose " suppress 'duplicate connection' error
"    exe "cs add " . db . " " . path
"    set cscopeverbose
"  endif
"endfunction

" au BufEnter /* call LoadCscope()
call LoadCscope()

