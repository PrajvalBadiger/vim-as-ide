
let $FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name ''*.tags'' -printf ''%P\n'''

nnoremap <C-p> :Files<Cr>
nnoremap <leader>fg :GFiles<Cr>
nnoremap <leader>fb :Buffers<Cr>
nnoremap <leader>fc :Commits<Cr>

let g:fzf_layout = { 'up': '~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5 }}
