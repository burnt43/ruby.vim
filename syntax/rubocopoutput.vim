if exists("b:current_syntax")
  finish
endif

syntax match rubocopFilename '\v^\zs.*\.rb\ze:\d+:\d+'
syntax match rubocopLetter '\v\s\zs(C|W)\ze:\s'
syntax match rubocopOffense '\v[1-9]+\d*\s+offenses'
syntax match rubocopClean '\vno offenses'
syntax match rubocopLiteral '\vLiteral \zs\w+\ze'

syntax match rubocopStyleRedundantSelf '\vRedundant \zsself\ze detected'

syntax match rubocopStyleBlockDelimiters '\vAvoid using \zs\{\.\.\.\}\ze for multi-line blocks'

syntax match rubocopStyleEmptyLiteral1 '\vUse hash literal \zs\{\}\ze' 
syntax match rubocopStyleEmptyLiteral2 '\vinstead of \zsHash\.new\ze'

syntax match rubocopStyleCommentedKeyword '\vDo not place comments on the same line as the \zsend\ze keyword'

highlight link rubocopFilename Macro
highlight link rubocopLetter Function
highlight link rubocopOffense Keyword
highlight link rubocopClean Exception

highlight link rubocopLiteral Identifier
highlight link rubocopStyleRedundantSelf Identifier
highlight link rubocopStyleBlockDelimiters Identifier
highlight link rubocopStyleEmptyLiteral1 Identifier
highlight link rubocopStyleEmptyLiteral2 Identifier
highlight link rubocopStyleCommentedKeyword Identifier
