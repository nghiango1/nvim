vim.cmd [[
" Setup compiler
" pascal
" set makeprg=fpc\ %\ -vewnhrb
" c
set makeprg=gcc\ -fdiagnostics-plain-output\ -g\ -I.\ -o\ dist/%:r\ %

" rust standalone
" set makeprg=rustc\ -g\ --error-format=short\ -o\ %:r\ %

" rust cargo
" set makeprg=cargo\ build\ --message-format=short
set errorformat=%f:%l:%c:%t:%m,%f:%l:%c:%m,%f:%m,%m

" Toggle quickfix window
function! ToggleQuickfix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

" Quick fix list
nnoremap <silent> <leader>di :call ToggleQuickfix()<CR>
nnoremap <silent> <leader>ci :call ToggleQuickfix()<CR>
nnoremap <silent> <leader>cdn :colder<CR>
nnoremap <silent> <leader>cdN :cnewer<CR>
nnoremap <silent> <leader>cn :cn<CR>
nnoremap <silent> <leader>cp :cp<CR>
nnoremap <silent> <leader>cN :cp<CR>
" nnoremap <silent> <F5> :!%:r<CR>
nnoremap <silent> <F5> :!%:r<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bN :bp<CR>
nnoremap <silent> <leader>bd :bd<CR>


nnoremap <leader>dc :make<CR>
]]
