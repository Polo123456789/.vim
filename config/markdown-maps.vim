function! MarkdownMaps()
    "Creacion de Headers
    nnoremap <localleader>nc :set conceallevel=0<CR>
    nnoremap <leader>mh1 "zY"zpVr=
    nnoremap <leader>mh2 "zY"zpVr-
    inoremap <localleader>1 <Esc>"zY"zpVr=o<C-j>
    inoremap <localleader>2 <Esc>"zY"zpVr-o<C-j>

    " Para crear una archivo de un link
    nnoremap <localleader>cf "zyi(:e %:h/<c-r>z<cr>
    " Para ir al archivo que esta debajo del cursor usa gF

    " Items de listas
    inoremap <localleader>li <Esc>"zyy"zp<c-a>f.ll"_C
    nnoremap <localleader>li "zyy"zp<c-a>f.ll"_C
    inoremap <localleader>ui <c-j>*<Space>
    nnoremap <localleader>ui o*<Space>
    inoremap <localleader>cs <Esc>gqgqI> <Esc>A
    nnoremap <C-.> vipJ$dT.xgqgq<Space>
endfunction
autocmd BufRead,BufNewFile *.md call MarkdownMaps()
command MarkMode call MarkdownMaps()
