Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'


" nerd git config
let g:NERDTreeGitStatusShowClean = 1 " default: 0
let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0

" NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>

" show hidden files by default
let NERDTreeShowHidden=1

" Open nerdtree window on opening Vim
#autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | else | NERDTree | endif

" Open nerdtree window on opening Vim if no file is specified
autocmd VimEnter * if argc() == 0 | NERDTree | endif

" Refresh the current folder if any changes
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

"Reload the window if directory is changed
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END

"Close nerdtree automatically if it is theonly window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

