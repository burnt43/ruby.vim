if exists("b:current_syntax")
  finish
endif

syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'
syntax match rubocopLetter '\v\.rb:\d+:\d+:\s\zs\w\ze:'

highlight link rubocopFilename Macro
highlight link rubocopLetter Identifier
