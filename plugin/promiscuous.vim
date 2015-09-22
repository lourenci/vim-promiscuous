set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set undolevels=1000
set undoreload=10000

if !exists("g:promiscuous_dir")
  " The directory to store all sessions and undo history
  let g:promiscuous_dir = $HOME . '/.vim/promiscuous'
endif

if !exists("g:promiscuous_prefix")
  " The prefix prepended to all commit, stash, and log messages
  let g:promiscuous_prefix = '[Promiscuous]'
endif

command! -nargs=? Promiscuous :call Promiscuous(<f-args>)

function! Promiscuous(...)
  if a:0 > 0
    if type(a:1) == type([])
      let l:branch = a:1[-1]
    else
      let l:branch = a:1
    endif

    " call promiscuous#git#stash()
    " call promiscuous#git#commit()
    " call promiscuous#session#save()
    " call promiscuous#branch#clean()
    " call promiscuous#git#checkout(l:branch)
    " call promiscuous#session#load()
    " call promiscuous#git#commit_pop()
    " call promiscuous#git#stash_pop()

    redraw!
    echom l:branch
  else
    call promiscuous#branch#search()
  endif
endfunction

silent! call Promiscuous()
