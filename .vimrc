set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmode=longest,list,full
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set number
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set background=dark
set autoread
" check if file changed when buffer gets focus
au FocusGained * :checktime
let g:ale_fixers = {
\ 'javascript': ['eslint'],
\}
let g:markdown_fenced_languages = ['javascript']
let g:ale_fix_on_save = 1
let g:ale_pattern_options = {
\   '.*\.vue$': {'ale_enabled': 0},
\}
let g:bufferline_echo = 0
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" leader-n focuses the NERD-tree
nnoremap <leader>n :NERDTreeFind<CR>
" paste from windows clipboard
nnoremap <leader>p "+p
" yank to windows clipboard
nnoremap <leader>y "*y
" open fuzzy finder
nnoremap <leader>f :FZF<CR>
" close current buffer
nnoremap <leader>q :bd<CR>

if has("nvim")
  " leave insert mode in terminal when pressing esc
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  " but in the FZF window, let Esc have the normal behavior
  au FileType fzf tunmap <Esc>
endif

nnoremap Q <nop>

" moving between windows with alt-arrows
nnoremap <M-Right> <C-W><Right>
nnoremap <M-Left> <C-W><Left>
nnoremap <M-Up> <C-W><Up>
nnoremap <M-Down> <C-W><Down>

" plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'jaredgorski/spacecamp'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'sirver/ultisnips'
call plug#end()

" color theme settings
let g:vim_jsx_pretty_colorful_config = 1
let g:gruvbox_number_column='bg1'
colorscheme gruvbox
