set hidden
set number
set mouse=a
set tabstop=2     " Size of a hard tabstop (ts).
set shiftwidth=2  " Size of an indentation (sw).
set expandtab     " Always uses spaces instead of tab characters (et).
set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent    " Copy indent from current line when starting a new line.
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'edkolev/tmuxline.vim'
    Plug 'mtdl9/vim-log-highlighting'
call plug#end()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


:nmap <C-Right> :tabnext<CR>
:nmap <C-Left> :tabprevious<CR>

:nmap <A-Right> :tabnext<CR>
:nmap <A-Left> :tabprevious<CR>

set background=dark
colorscheme palenight

et g:airline#extensions#tabline#enabled = 0
:hi TabLineFill ctermfg=Green ctermbg=235    "Green, Black
:hi TabLine ctermfg=145 ctermbg=237          "White, menu_grey"
:hi TabLineSel ctermfg=235 ctermbg=39         "Black, Blue"
:hi Title ctermfg=235 ctermbg=114       "Black,Green"
"set guitablabel=\[%N\]\ %t\ %M
set guitablabel=%t

"let g:airline_theme = 'palenight'
"let g:airline#extensions#tmuxline#enabled = 0
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#formatter = 'unique_tail'
":TmuxlineSnapshot tmuxtest.conf

let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}
let g:tmuxline_preset = {
    \ 'a'      : '#S',
    \ 'win'    : '#W',
    \ 'cwin'   : '#W',
    \ 'y'      : ['%H:%M','%d-%b-%y'],
    \ 'z'      : '#H',
    \ 'options': {'status-justify': 'left'}
    \ }
let g:tmuxline_theme = {
    \   'a'    : [ 235, 114 ],
    \   'b'    : [ 253, 239 ],
    \   'c'    : [ 244, 236 ],
    \   'x'    : [ 244, 236 ],
    \   'y'    : [ 253, 239 ],
    \   'z'    : [ 235, 39 ],
    \   'win'  : [ 253, 239 ],
    \   'cwin' : [ 235, 39 ],
    \   'bg'   : [ 244, 236 ],
    \ }
    
let g:terminal_ansi_colors = [
  \'#282828', '#CC241D', '#98971A', '#D79921',
  \'#458588', '#B16286', '#689D6A', '#D65D0E',
  \'#fb4934', '#b8bb26', '#fabd2f', '#83a598',
  \'#d3869b', '#8ec07c', '#fe8019', '#FBF1C7' ]

highlight Terminal guibg='#282828' guifg='#ebdbb2'
