if fnamemodify(bufname('%'), ':e') ==# 'rb'
  let ruby_fold = 1
  let b:ruby_foldable_groups = 'class def module'
else
  let ruby_fold = 0
  let b:ruby_foldable_groups = ''
endif
