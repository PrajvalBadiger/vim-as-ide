Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name ''*.tags'' -printf ''%P\n'''

nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-b> :Buffers<Cr>
nnoremap <leader>c :Commits<Cr>
