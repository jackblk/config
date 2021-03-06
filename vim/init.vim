" Bind `,` to <leader>
let mapleader = ","

" Bind `<leader><leader>` to copy text to system clipboard in VISUAL (selecting) mode
vnoremap <leader><leader> "*y
" Bind `<leader>p` to paste text from system clipboard in NORMAL mode
nnoremap <leader>p "*p

" Bind `<leader><bracket_key>` to copy inside bracket
for motion in ["\"", "'", "{", "[", "w", "b"]
  execute 'nnoremap <leader>' . motion . ' "*yi'. motion
endfor