" UTF para .org
function s:setEncodingUTF()
    set fileencoding=utf8
    set encoding=utf-8
endfunction
autocmd BufRead,BufNewFile *.org call s:setEncodingUTF()

" Apagamos el spell de pandoc
function s:sinSpell()
    set spell!
endfunction
autocmd BufRead,BufNewFile *.md call s:sinSpell()

" De header a cpp
"function s:implToH()
"    nnoremap <leader>ti :e<Space>%<.cpp<CR>
"    nnoremap <leader>td :e<Space>%<.hpp<CR>
"endfunction
"autocmd BufRead,BufNewFile *.cpp,*.hpp call s:implToH()

function! UseSystemClipboard()
    setlocal clipboard+=unnamed
endfunction
command SystemClip call UseSystemClipboard()

" Porque los tsx no los toma correctamente
function s:UseTypescript()
    set syntax=typescript
    set colorcolumn=120
    set textwidth=0
endfunction
autocmd BufRead,BufNewFile *.tsx call s:UseTypescript()

" Autocompletar tags en html
" function s:CompleteTags()
"   inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
"   inoremap <buffer> ><Leader> >
"   inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
"   inoremap {% {%%}<Esc>hi
" endfunction
" autocmd BufRead,BufNewFile *.html,*.js,*.xml call s:CompleteTags()
