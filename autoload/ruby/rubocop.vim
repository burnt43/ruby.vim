function! ruby#rubocop#AnalyzeLines(type)
  if a:type ==# 'V'
    let starting_line = line("'<")
    let ending_line   = line("'>")
  else
    return 1
  end

  let current_line = starting_line

  redir! > /home/jcarson/tmp/test.txt
  while current_line <= ending_line
    silent echom getline(current_line)
    let current_line += 1
  endwhile
  redir end
endfunction
