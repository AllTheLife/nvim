inoremap ,, <Esc>I
inoremap .. <Esc>A
inoremap <C-n> <Esc>ja
inoremap <C-p> <Esc>ka
inoremap <C-f> <Esc>la
inoremap <C-b> <Esc>ha

noremap +y "+y
noremap +p "+p
noremap <c-u> <c-i>
noremap <C-q> :tabclose<CR>
"noremap cw z=

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let b:haveRemappedT=1
let s:oldmap=maparg('T', 'n')
let g:deus_termcolors=256
let g:neoterm_autoscroll=1
let g:python_host_skip_check=1
let g:python_host_prog = '/usr/local/bin/python'

language message zh_CN.UTF-8

set encoding=utf-8
set clipboard+=unnamedplus
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.utf-8
set showtabline=2
set t_Co=256
set termguicolors
set number
set relativenumber "相对行号
set cursorline "高亮光标所在行
set wrap "超行换行
set showcmd
set wildmenu "命令行补全
set hlsearch "搜索高亮
set incsearch "智能查找
set ignorecase
set list
set smartcase
set updatetime=1
set autochdir
set lazyredraw
set listchars=tab:>-,trail:
set mouse=a
set scrolloff=5
set backspace=2
set smartindent
set noswapfile
set modifiable
set textwidth=100
set autoindent "智能缩进
set background=dark
set shiftwidth=4
set tabstop=4
set expandtab "替换制表符为空格
set viminfo='100,n$HOME/.vim/files/info/viminfo

map W :w<CR>
map Q :q<CR>
map <leader>q :qa<CR>
map <leader>w :wa<CR>
map c<left> <c-w>t<c-w>H
map c<right> <c-w>t<c-w>H
map c<up> <c-w>t<c-w>K
map c<down> <c-w>t<c-w>K
map cr <c-w>r
map . $
map , ^
map ' %
map r :call Run()<CR>
map ms<right> :set splitright<CR>:vsplit<CR>
map ms<left> :set nosplitright<CR>:vsplit<CR>
map ms<down> :set splitbelow<CR>:split<CR>
map ms<up> :set nosplitbelow<CR>:split<CR>
map msi :set splitright<CR>:vsplit<CR>
map msh :set nosplitright<CR>:vsplit<CR>
map msn :set splitbelow<CR>:split<CR>
map mse :set nosplitbelow<CR>:split<CR>
map <Leader><right> <C-w>l
map <Leader><up> <C-w>k
map <Leader><down> <C-w>j
map <leader><left> <C-w>h
map ci <C-w>l
map ce <C-w>k
map cn <C-w>j
map ch <C-w>h
map csn :res -5<CR>
map cse :res +5<CR>
map csh :vertical resize+5<CR>
map csi :vertical resize-5<CR>
map <C-t> :tabe<CR>
map <S-down> 5j
map <S-up> 5k
map <C-left> 5h
map <C-right> 5l
map <S-n> 5j
map <S-e> 5k
map <S-h> 5h
map <S-i> 5l
map <leader><cr> o<esc>
map te :set nonumber<cr>:set norelativenumber<cr>:term<cr>
map <leader>te :call OpenFloatingWin()<CR>te
map <leader>lg :tabe<cr>:set nonumber<cr>:set norelativenumber<cr>:term lazygit<cr>
map <leader>t :call OpenFloatingWin()<CR>
map <leader>rc :e ~/.config/nvim/init.vim<cr>
map PY :sp<cr>:term ipython<cr>
map ; :
map / ?
map R :e<cr>
map RL :source $MYVIMRC<cr>
map <leader>sh :set hlsearch!<cr>
"map figlet :r !figlet %<cr>

imap aa <Esc>
vmap aa <Esc>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>
nnoremap <leader><cr> o<esc>
nnoremap cp <esc>/<++><CR>:noh<CR>v3ls
nnoremap <leader>sc :set spell!<CR>
noremap u i
noremap U I
noremap n j
noremap e k
noremap i l
noremap l u
noremap K N
noremap f e
"noremap o y
"noremap O <nop>
"noremap y o
"noremap Y O
"noremap O <nop>
nnoremap '<CR> gf

tnoremap qq <C-\><C-n>

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

autocmd TermOpen term://* startinsert 
"autocmd Filetype markdown inoremap n1 # <cr><++><esc>ka
"autocmd Filetype markdown inoremap n2 ## <cr><++><esc>ka
"autocmd Filetype markdown inoremap n3 ### <cr><++><esc>ka
"autocmd Filetype markdown inoremap n4 #### <cr><++><esc>ka
"autocmd Filetype markdown inoremap n5 ##### <cr><++><esc>ka
"autocmd Filetype markdown inoremap n6 ###### <cr><++><esc>ka
autocmd Filetype markdown inoremap cp <esc>/<++><CR>:set nohlsearch<cr>c4l
autocmd Filetype markdown inoremap ,i ** <++><esc>F*i
autocmd Filetype markdown inoremap ,b **** <++><esc>F*hi
autocmd Filetype markdown inoremap ,d ~~~~ <++><esc>F~hi
autocmd Filetype markdown inoremap ,p ![avatar](<++>) <++><esc>F(a
autocmd Filetype markdown inoremap ,a [](<++>) <++><esc>F[a
autocmd Filetype markdown inoremap ``` ```<cr><++><cr>```<esc>kkA
autocmd Filetype markdown inoremap -- <cr>---<cr>
autocmd FileType html set shiftwidth=4
autocmd FileType html set tabstop=4
autocmd Filetype html inoremap ,p &nbsp;
"autocmd FileType jinja.html set shiftwidth=4
"autocmd FileType jinja.html set tabstop=4
"autocmd Filetype jinja.html inoremap ,p &nbsp;
autocmd FileType python set shiftwidth=4
autocmd FileType python set tabstop=4
autocmd FileType cpp set shiftwidth=2
autocmd FileType cpp set tabstop=2
autocmd FileType cpp nmap debug :term gdb %<<CR>

exec "set nohlsearch"

silent !mkdir -p ~/.config/nvim/tmp/backup 
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/tmp/undo,.
endif
