function! promiscuous#branch#clean()
  call promiscuous#helpers#exec('bufdo bd', 0)
endfunction

function! promiscuous#branch#search()
  call fzf#run({
  \ 'options': '--print-query',
  \ 'sink*': function('Promiscuous'),
  \ 'source': 'git branch -a'
  \ })
endfunction
