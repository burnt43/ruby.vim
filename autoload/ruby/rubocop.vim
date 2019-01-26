function! ruby#rubocop#AnalyzeLines(type)
  if ruby#YankText(a:type) ==# 0
    redir > /home/jcarson/test.txt
      echom "THIS IS A TEST"
    redir end
  endif
endfunction
