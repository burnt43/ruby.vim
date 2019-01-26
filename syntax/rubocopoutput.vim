if exists("b:current_syntax")
  finish
endif

syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'
syntax match rubocopLetter '\v\.rb:\d+:\d+:\s\zs\w\ze:'
syntax match rubocopOffense '\v[1-9]+\d*\s+offenses'

highlight link rubocopFilename Macro
highlight link rubocopLetter Function
highlight link rubocopOffense Keyword
