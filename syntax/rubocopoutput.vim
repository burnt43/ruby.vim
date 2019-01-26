if exists("b:current_syntax")
  finish
endif

syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'

highlight link rubocopFilename Macro
