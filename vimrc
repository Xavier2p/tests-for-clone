" ~/.vimrc
" LOGO ------------------------------------------------------------------- {{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}

" PLUGINS ----------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
 Plug 'itchyny/lightline.vim'
 Plug 'vim-scripts/c.vim'
 Plug 'joshdick/onedark.vim'
 Plug 'preservim/nerdtree'
 Plug 'vim-scripts/indentpython.vim'
 Plug 'frazrepo/vim-rainbow'
 Plug 'chrisbra/vim-zsh'
 Plug 'oranget/vim-csharp'
 Plug 'tpope/vim-fugitive'
 Plug 'airblade/vim-gitgutter'
 Plug 'sainnhe/sonokai'
 Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

"}}}

" VARIABLES --------------------------------------------------------------- {{{

set laststatus=2
colorscheme sonokai
set nu          "Display line number
set autoindent  "AutoIndent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set cc=80
set encoding=UTF-8
"let g:lightline = {'colorscheme' : 'sonokai'}
set cursorline
set wildmode=list:longest
syntax on
set foldmethod=marker
packadd! termdebug
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set mouse=a
set incsearch
set backspace=indent,eol,start

" }}}

" LIGHTLINE --------------------------------------------------------------- {{{
let g:lightline = {
      \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \  
      \ },
      \  'component':{
      \    'charvaluehex': '0x%B'
      \ },
      \ }
"}}}

" RAINBOW ----------------------------------------------------------------- {{{
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"}}}

" GIT-NERDTREE ------------------------------------------------------------ {{{
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'+',
                \ 'Untracked' :'±',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'x',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'≠',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusShowIgnored = 1
" }}}

map <C-o> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

highlight ExtraWhitespace ctermbg=red guibg=red
2match ExtraWhitespace /\s\+$/
let g:sonokai_style = 'atlantis'

silent! unmap <C-k>
map <silent> <C-k> :call ClangFormat()<CR>
function! ClangFormat()
    if &filetype == 'c' || &filetype == 'cpp'
        :%!/nix/store/36yd7zncqq1jnpskvpq6lmn1qmwgzgp5-clang-tools-11.1.0/bin/clang-format
    else
        echo "You're not in a c file!"
    endif
endfunction

nnoremap <C-1> :NERDTreeToggle<CR>

let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
	exe "set" git_settings
endif
