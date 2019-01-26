function! ruby#OpenOrFocusBuffer(buffer_name)
  let buffer_number = bufwinnr(a:buffer_name)

  if buffer_number >= 0
    execute buffer_number . "wincmd w"
    return 0
  else
    execute "split " . a:buffer_name
    return 1
  endif
endfunction

function! ruby#InsertThousandSeparators(type)
  if a:type ==# 'v'
    let starting_column = col("'<")
    let ending_column   = col("'>")
  elseif a:type ==# 'char'
    let starting_column = col("'[")
    let ending_column   = col("']")
  else
    return 1
  endif

  if ending_column - starting_column >= 3
    let current_column = ending_column - 2

    while current_column > starting_column
      call cursor(line("."), current_column)
      execute "normal! i_" . "\<esc>"

      let current_column -= 3
    endwhile
  endif
endfunction

function! ruby#ChangeDoubleQuoteToSingleQuote(type)
  echom a:type
  if a:type ==# 'v'
    let starting_column = col("'<")
    let ending_column   = col("'>")

    let starting_line = line("'<")
    let ending_line   = line("'>")
  elseif a:type ==# 'char'
    let starting_column = col("'[")
    let ending_column   = col("']")

    let starting_line = line("'[")
    let ending_line   = line("']")
  else
    return 1
  endif

  execute 'normal! :' . starting_line . ',' . ending_line . 's/\v(%' . starting_line . 'l%' . starting_column . 'c\s+\zs"\ze|%' . ending_line . 'l%' . ending_column . 'c\zs"\ze)/' . "'" . '/g' . "\<cr>"
endfunction
