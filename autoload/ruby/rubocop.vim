function! ruby#rubocop#AnalyzeLines(type)
  if ruby#YankText(a:type) ==# 0
    redir! > /home/jcarson/tmp/test.txt
      silent echom @@
    redir end
  endif
endfunction
