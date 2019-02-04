if fnamemodify(bufname('%'), ':e') ==# 'rb'
  let ruby_fold = 0
  let b:ruby_foldable_groups = 'class def module'
endif
let ruby_fold = 0
