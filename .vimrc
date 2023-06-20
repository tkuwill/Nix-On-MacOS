call plug#begin('~/.vim/plugged')

" Color themes
Plug 'NLKNguyen/papercolor-theme'
" other plugin
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
" Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
call plug#end()

" indentline config (disable the conceal for JSON and markdown)
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

set shortmess-=S
set t_Co=256 
set background=light
colorscheme PaperColor
set cursorline
set splitbelow splitright
set wildmenu
set number
set softtabstop=4
set ignorecase
set smartcase
set hlsearch
set listchars=tab:>~,space:.
set cindent
set ai
syntax on
set splitbelow splitright
" set laststatus=2
" set statusline+=%F
" Some funky status bar code its seems
" https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
set laststatus=2            " set the bottom status bar

"function! ModifiedColor()
"    if &mod == 1
"        hi statusline guibg=White ctermfg=8 guifg=OrangeRed4 ctermbg=15
"    else
"        hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
"    endif
"endfunction

"au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
"hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15

" Formats the statusline
set statusline=%F                           " file name and path
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]      
"modified flag

set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" Folding for markdown
let g:markdown_folding = 1
au FileType markdown setlocal foldlevel=1
 
"Keymapping
nnoremap <C-A> :noh<cr>
nnoremap <C-H> <Home>
nnoremap <C-L> <End>
inoremap <C-H> <Home>
inoremap <C-L> <End>
map <F2> :NERDTreeToggle<CR>
" spelling check in English
set spelllang=en,cjk
nnoremap <F3> :set spell<cr>
nnoremap <F4> :set nospell<cr>
"

so ~/.vim/autoload/plug.vim
