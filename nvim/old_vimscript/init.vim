"" plugins ---------------------
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'dpelle/vim-LanguageTool'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'navarasu/onedark.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chrisbra/csv.vim'
Plug 'lervag/vimtex'
Plug 'othree/xml.vim'
Plug 'github/copilot.vim'
Plug 'preservim/tagbar'
Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dkarter/bullets.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()
"" -----------------------------

syntax on
""set conceallevel=1
set number
set relativenumber
set nofoldenable
set foldlevelstart=999
set foldlevel=999
set cursorline
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set expandtab
""colorscheme dracula
colorscheme jellybeans
hi cursorline cterm=none  ctermbg=236 ctermfg=none 
filetype indent off


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

"" nerdtree configuration
map <C-o> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"" indent configuration
let g:indentLine_color_term = 239
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 1
map <C-i> :IndentLinesToggle<CR>

"" Latex
map <F2> :!make all %<CR>
map <F3> :!make bib %<CR>
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'
let g:tex_flavor= 'latex'
let g:vimtex_view_method = 'zathura'

"" tagbar
nmap <F8> :TagbarToggle<CR>

"" airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"" Dashboard
let g:dashboard_default_executive ='fzf'

"" fzf
let g:fzf_preview_window = ['right,50%', 'ctrl-/']
let g:fzf_preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']
let g:fzf_preview_window = []
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


