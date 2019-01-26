function! ruby#rubocop#AnalyzeFilename(filename)
  let rubocop_execute_string = "rubocop " . a:filename

  call ruby#OpenOrFocusBuffer('__Rubocop_Output__')

  normal! ggdG

  echom "[ruby.vim] rubocop analyzing: " . rubocop_execute_string

  setlocal filetype=rubocopoutput
  setlocal buftype=nofile

  silent execute "read! " . rubocop_execute_string
  normal! ggdd

  call feedkeys("\<cr>")
endfunction

function! ruby#rubocop#AnalyzeBuffer()
  write
  call ruby#rubocop#AnalyzeFilename(fnamemodify(bufname("%"), ":p"))
endfunction

function! ruby#rubocop#AnalyzeLines(type)
  if a:type ==# 'V'
    let starting_line = line("'<")
    let ending_line   = line("'>")
  else
    return 1
  end

  let rubocop_tmp_file = '/home/jcarson/tmp/.rubocop.rb'
  let current_line     = starting_line

  execute "redir! > " . rubocop_tmp_file
  while current_line <= ending_line
    silent echon getline(current_line) . "\n"
    let current_line += 1
  endwhile
  redir end

  call ruby#rubocop#AnalyzeFilename(rubocop_tmp_file)
endfunction
