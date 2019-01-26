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
