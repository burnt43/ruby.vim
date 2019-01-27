if exists("b:current_syntax")
  finish
endif

syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'
syntax match rubocopLetter '\v\s\zs(C|W)\ze:\s'
syntax match rubocopOffense '\v[1-9]+\d*\s+offenses'
syntax match rubocopClean '\vno offenses'
syntax match rubocopLiteral '\vLiteral \zs\w+\ze'
syntax match rubocopRedundantSelf '\vRedundant \zsself\ze detected'
syntax match rubocopMultiLineCurlyBraces '\vAvoid using \zs\{\.\.\.\}\ze for multi-line blocks'

syntax match rubocopHashLiteral1 '\vUse hash literal \zs\{\}\ze' 
syntax match rubocopHashLiteral2 '\vinstead of \zsHash\.new\ze'

highlight link rubocopFilename Macro
highlight link rubocopLetter Function
highlight link rubocopOffense Keyword
highlight link rubocopClean Exception

highlight link rubocopLiteral Constant
highlight link rubocopRedundantSelf Constant
highlight link rubocopMultiLineCurlyBraces Constant
highlight link rubocopHashLiteral1 Constant
highlight link rubocopHashLiteral2 Constant
