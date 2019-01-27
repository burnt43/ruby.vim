if exists("b:current_syntax")
  finish
endif

syntax match rubocopOffense '\v[1-9]+\d*\s+offenses'
syntax match rubocopClean '\vno offenses'
syntax match rubocopLiteral '\vLiteral \zs\w+\ze'
syntax match rubocopFoobar '\v^.*\.rb:\d+:\d+.*\zs(self)\ze'
syntax match rubocopLetter '\v\.rb:\d+:\d+:\s\zs\w\ze:'
"syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'

"highlight link rubocopFilename Macro
highlight link rubocopLetter Function
highlight link rubocopOffense Keyword
highlight link rubocopClean Exception
highlight link rubocopLiteral Constant
highlight link rubocopFoobar Constant
