set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/thinca/vim-quickrun.git/'
Plugin 'git://github.com/vim-airline/vim-airline'
Plugin 'git://github.com/vim-airline/vim-airline-themes'
Plugin 'git://github.com/bronson/vim-trailing-whitespace'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/majutsushi/tagbar.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'git://github.com/vim-latex/vim-latex.git'
Plugin 'git://github.com/Shougo/deoplete.nvim.git'
Plugin 'git://github.com/zchee/deoplete-jedi.git'
Plugin 'git://github.com/zchee/deoplete-clang.git'
Plugin 'git://github.com/neomake/neomake.git'
Plugin 'git://github.com/raimondi/delimitmate.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'

Plugin 'https://github.com/rhysd/vim-color-spring-night'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

"Airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_section_a = '%{strftime("%c")}'
let g:airline_section_d = '%{fugitive#statusline()}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Tagbar
nmap <F8> :TagbarToggle<CR>

"NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

"LaTeX
let g:Tex_GotoError = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'

"let g:Tex_CompileRule_pdf = 'pdflatex --shell-escape --interaction=nonstopmode $*'

"   To create the following files
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'

"Deoplete
let g:deoplete#enable_at_startup = 1

"Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_python_enabled_makers = ['pylint','python']

"General config
:syntax on
:set mouse=
colorscheme spring-night
:set tabstop=4
:set shiftwidth=4
set number
set nowrap
let g:netrw_liststyle = 3
set pastetoggle=<F10>
set clipboard+=unnamedplus

"Custom Keybindings
map <C-H> <C-W>h
map <C-J> <C-w>j
map <C-K> <C-W>k
map <C-L> <C-W>l
