set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/thinca/vim-quickrun.git/'
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'
Plugin 'https://github.com/bronson/vim-trailing-whitespace'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/vim-latex/vim-latex.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'https://github.com/Shougo/deoplete.nvim.git'
Plugin 'https://github.com/Shougo/neco-vim.git'
Plugin 'https://github.com/zchee/deoplete-jedi.git'
Plugin 'https://github.com/rust-lang/rust.vim'
Plugin 'https://github.com/tweekmonster/deoplete-clang2.git'
Plugin 'https://github.com/neomake/neomake.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'sebastianmarkow/deoplete-rust'
Plugin 'xolox/vim-misc' "vim-notes dependency
Plugin 'xolox/vim-notes'

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

"Vim-JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"LaTeX
let g:Tex_GotoError = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --shell-escape --interaction=nonstopmode $*'
let g:Imap_UsePlaceHolders = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_SmartKeyDot = 0

"Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

"Deoplete-Rust
let g:deoplete#sources#rust#racer_binary='/home/userpc/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/userpc/.vim/bundle/deoplete-rust/rust/src'

"Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_python_python_exe = '/usr/bin/python3'
let g:neomake_python_pylint_exe = '/usr/bin/pylint-3'
let g:neomake_python_enabled_makers = ['pylint', 'python']

"Vim Notes
let g:notes_directories = ['~/mega/other/notes']

"General config
syntax on
set mouse=
colorscheme spring-night
set ts=4 sw=4 et
set number
set nowrap
let g:netrw_liststyle = 3
set pastetoggle=<F10>
set clipboard+=unnamedplus

"Custom Keybindings
nmap <silent> <C-h> :wincmd h<CR>
autocmd VimEnter * nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
map - <C-W>-
map + <C-W>+
map  <F5> :w<CR>:term gcc -o run_c % && ./run_c<CR>

"Custom Commands
command PyRun tabnew | term python3 -i %
command CRun tabnew | term gcc -o /tmp/run_c % && /tmp/run_c && rm /tmp/run_c
command CppRun tabnew | term g++ -o /tmp/run_cpp % && /tmp/run_cpp && rm /tmp/run_cpp
command CargoRun tabnew | term cargo run
command Iipdate !rsync -r --delete --progress ~/mega/2017-2018_Fall/iip/public_html/ math:~/public_html
command Term tabnew | term
