setlocal suffixesadd+=.vue
setlocal suffixesadd+=.js
setlocal suffixesadd+=.ts
setlocal isfname+=@-@
setlocal includeexpr=substitute(v:fname,'^@\/','src/','')
