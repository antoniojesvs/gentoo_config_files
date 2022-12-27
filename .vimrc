" Vim settings shortcuts
map <F9> :e $HOME/.vimrc<CR>
map <F6> :so ~/.vimrc<CR>


" Leader key definition
let mapleader=" "


" Quicksave command
nmap <c-s> :w<CR>
vmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>


" Generate tags
" ctags-exuberant -R .
map <f12> :!ctags -R .<cr><cr>
set tags=./tags,tags;$HOME

" Wrap visually selected text
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap ""  <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv0  " better indentation
vnoremap > >gv0  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Showing line numbers and length
set number  " show line numbers
set tw=174  " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=175
set t_ut=
highlight ColorColumn ctermbg=120


" easier formatting of paragraphs
" to wrap document width
vmap Q gq
nmap Q gqap


" Useful settings
"" set history=700
"" set undolevels=700
set ai " set auto-indenting on for programming
set showcmd " display incomplete commands
set ruler " show the current row and column
"set shortmess+=I    " Remove useless splash screen


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set scrolloff=3 " keep 3 lines when scrolling
"^e scroll down
"^y scroll up


" Make search case insensitive
set hlsearch " highlight searches
set incsearch " do incremental searching
set showmatch " jump to matches when entering regexp
set ignorecase " ignore case when searching
set smartcase " no ignorecase if Uppercase char present
"set visualbell t_vb= " turn off error beep/flash
"set novisualbell " turn off visual bell
set grepprg=grep\ -rIn\ --exclude=tags\ --exclude=\\*.pyc\ --exclude-dir=build\ --exclude-dir=.ropeproject
"set grepprg=grep\ -rIn\ --exclude=tags\ --exclude=\*.pyc\ --exclude-dir=build
"set grepprg=grep\ -rInE\ --exclude=\\*.pyc\ --exclude=tags
noremap <S-f><S-w> :<C-u>tab split<CR>:lgrep '<C-r><C-w>' . <CR>:lopen<CR>:redraw!<CR>
vnoremap <S-f><S-v> y:tabnew<CR>:lgrep '<C-r>0' . <CR>:lopen<CR>:redraw!<CR>
noremap <S-f><S-c> :tabnew<CR>:lgrep '<C-r>+' . <CR>:lopen<CR>:redraw!<CR>
noremap <S-f><S-y> :tabnew<CR>:lgrep '<C-r>0' . <CR>:lopen<CR>:redraw!<CR>
"set novisualbell " turn off visual bell


" Normal backspace
set backspace=indent,eol,start " make that backspace key work the way it should


:" These work like * and g*, but do not move the cursor and always set hls.
map <Leader>* :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>
map <Leader>g* :let @/ = expand('<cword>')\|set hlsearch<C-M>
noremap <2-LeftMouse> :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M><2-LeftMouse>


" Syntax highlighting
filetype on " detect type of file
filetype plugin indent on " load indent file for specific file type
syntax on " turn syntax highlighting on by default


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


" Some key maps
map <C-h> <Esc>:tabprev<CR>
map <C-l> <Esc>:tabnext<CR>
map <Leader>1 <Esc>1gt
map <Leader>2 <Esc>2gt
map <Leader>3 <Esc>3gt
map <Leader>4 <Esc>4gt
map <Leader>5 <Esc>5gt
map <Leader>6 <Esc>6gt
map <Leader>7 <Esc>7gt
map <Leader>8 <Esc>8gt
map <Leader>9 <Esc>9gt
map <C-n> <Esc>:tabnew<CR>
cmap <C-p> <Up>
cmap <C-n> <Down>


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Syntax highlighting
filetype on " detect type of file
filetype plugin indent on " load indent file for specific file type
syntax on " turn syntax highlighting on by default


:" These work like * and g*, but do not move the cursor and always set hls.
map <Leader>* :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>
map <Leader>g* :let @/ = expand('<cword>')\|set hlsearch<C-M>
noremap <2-LeftMouse> :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M><2-LeftMouse>


set nocompatible
set smartindent
set foldlevelstart=99
"autocmd FileType python BracelessEnable +indent +fold +highlight

set mouse=a

" VimPlug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"Plug 'vim-scripts/Efficient-python-folding'
"Plug 'tweekmonster/braceless.vim'
Plug 'vim-scripts/Python-Syntax-Folding'
"Plug 'tmhedberg/simpylfold'
Plug 'Lokaltog/vim-easymotion'
Plug 'davidhalter/jedi-vim'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'

" Initialize plugin system
call plug#end()


"----- GENERAL SETTINGS-------
syntax enable
set enc=utf-8
set fileencoding=utf-8
set guifont=Menlo\ for\ Powerline
set background=dark
let g:solarized_contrast="high"
let g:solarized_visibility="normal"
let g:solarized_termcolors=256
if has("gui_running")
    colorscheme solarized
else
    colorscheme darkblue
    "colorscheme monokai
    "colorscheme solarized
end

"------ Transparent background -------
hi Normal guibg=NONE ctermbg=NONE

"--------- Airline PowerLine ---------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'


"---------NERD-TREE SETTINGS----------
"nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup = 1
map <Leader>t <Esc>:NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

redraw
"-------- SYNTASTIC SETTINGS---------
"" pip install pylint
let g:syntastic_python_checkers=['pylint']
let g:syntastic_auto_loc_list=0
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_python_pylint_args='--disable=C0301,E1101,C03'
map <Leader>s :Errors<CR>
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
" :lcl      " Close errors window
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END


"-------- TAGS SETTINGS --------------------------------
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:tagbar_autoclose=2

nmap <silent> <leader>b :TagbarToggle<CR>
"autocmd BufEnter * nested :call tagbar#autoopen(0)


"---------GIT SETTINGS--------------
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" Breakpoints
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


"-------- EasyMotion ----------------
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
"<Leader><Leader>w            | Beginning of word forward. See |w|.
"<Leader><Leader>W            | Beginning of WORD forward. See |W|.
"<Leader><Leader>b            | Beginning of word backward. See |b|.
"<Leader><Leader>e            | End of word forward. See |e|.
"<Leader><Leader>ge           | End of word backward. See |ge|.


"-------- NERDCommenter -------------
"map <leader>cc <plug>NERDCommenterComment<Esc>gv
"map <leader>cu <plug>NERDCommenterUncomment<Esc>gv
"map <leader>c<space> <plug>NERDComToggleComment<Esc>gv


"-------- ctrlp ---------------------
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
"" let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*/build/**



"-------- Settings for tagbar -------
" cd ~/.vim/bundle
" git clone git://github.com/majutsushi/tagbar.git
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autoclose=0
let g:tagbar_autopreview=1
let g:tagbar_autoshowtag=1



" Python folding
"" set nofoldenable
" Alternative
"" set foldmethod=indent   " Folding by indent
"" set foldnestmax=2       " ... max 2 indents
set foldlevelstart=99
"zo open
"zc close
"za toogle
"zR open all
"zM close all

