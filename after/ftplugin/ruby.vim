if fnamemodify(bufname('%'), ':e') ==# 'rb'
  let ruby_fold = 1
  let b:ruby_foldable_groups = 'class def module'
endif
