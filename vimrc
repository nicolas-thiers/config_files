"" plugins ---------------------
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
"" Plug 'vim-latex/vim-latex'
Plug 'ycm-core/YouCompleteMe'
Plug 'dpelle/vim-LanguageTool'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'chrisbra/csv.vim'
Plug 'lervag/vimtex'
call plug#end()
"" -----------------------------

syntax on
set number
set nofoldenable
set foldlevelstart=999
set foldlevel=999
set cursorline
colorscheme onedark
hi cursorline cterm=none  ctermbg=236 ctermfg=none 

"" languagetool configuration
let g:languagetool_jar='/home/nicolas/Programas/LanguageTool-5.1-SNAPSHOT/languagetool-commandline.jar'
let g:languagetool_lang='en'

"" vim-rainbow configuration
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*'            , [['(', ')'], ['\[', '\]'], ['{', '}']]                            ],
    \ [ '*.tex'        , [['(', ')'], ['\[', '\]'], ['{', '}']]                            ],
    \ [ '*.cpp'        , [['(', ')'], ['\[', '\]'], ['{', '}']]                            ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"" lightline configuration
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }
"" nerdtree configuration
map <C-o> :NERDTreeToggle<CR>

"" indent configuration
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

"" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
map <C-i> :IndentLinesToggle<CR>

"" Latex
map <F2> :!pdflatex %<CR>
let g:tex_flavor= 'latex'
let g:vimtex_view_method = 'zathura'
