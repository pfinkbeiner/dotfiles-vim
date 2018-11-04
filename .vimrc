execute pathogen#infect()

syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
filetype plugin indent on

set incsearch
set encoding=utf-8
set hlsearch
set noerrorbells 
set novisualbell

autocmd BufRead,BufNewFile setup.ts set ft=typoscript
autocmd BufRead,BufNewFile constants.ts set ft=typoscript
autocmd BufRead,BufNewFile setup.txt set ft=typoscript
autocmd BufRead,BufNewFile constants.txt set ft=typoscript
autocmd BufRead,BufNewFile Vagrantfile set ft=ruby
autocmd FileType mail set tw=72 sw=4 tabstop=4 expandtab spell nu
autocmd FileType ruby set tw=72 sw=2 tabstop=2 expandtab spell nu
autocmd FileType jade set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType pug set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType stylus set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType text set tw=72 sw=4 tabstop=4 expandtab spell
autocmd FileType tex  set tw=80 nu tabstop=4 sw=4 expandtab nu spell
autocmd FileType cpp set tw=0 cindent nu sw=4
autocmd FileType make set tw=0
autocmd FileType awk set tw=0
autocmd FileType dot set tw=0
autocmd FileType html set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab tw=0 number
autocmd FileType xml set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab textwidth=0 number
autocmd FileType scss set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType yaml set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType typoscript set tabstop=2 textwidth=0 shiftwidth=2 softtabstop=2 number noexpandtab
autocmd FileType markdown set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab textwidth=0 number
autocmd FileType erlang set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0 number
autocmd FileType elixir set number
autocmd FileType php set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0 number
autocmd FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab textwidth=0 number
autocmd FileType coffee set tabstop=2 shiftwidth=2 number expandtab

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" Remove trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" gundo
nnoremap <C-G> :GundoToggle<CR>

" Autoreload .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" CtrlP:
" 0 - don’t manage working directory.
" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or
" files: .git/ .hg/ .svn/ .bzr/ _darcs/
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore = '\v\(\.git|node_modules|bower_components\)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v\(\.git|.hg|.svn|node_modules|bower_components\)$',
  \ 'file': '\.beam$\'
  \ }
