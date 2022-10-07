setlocal suffixesadd+=.vue
setlocal suffixesadd+=.js
setlocal isfname+=@-@
setlocal includeexpr=substitute(v:fname,'^@\/','src/','')
