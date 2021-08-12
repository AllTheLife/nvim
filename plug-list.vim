call plug#begin('~/.config/nvim/plugged')
" vim功能强化
Plug 'vimwiki/vimwiki'
"Plug 'mgc79/vim-visual-multi', {'branch': 'master'}
Plug 'lilydjwg/fcitx.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/switch.vim'
"Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'voldikss/vim-translator'
Plug 'junegunn/vim-peekaboo'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }
Plug 'gcmt/wildfire.vim'
Plug 'vim-scripts/restore_view.vim'
Plug 'dkarter/bullets.vim'
Plug 'tyru/open-browser.vim'
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c'}
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'universal-ctags/ctags'
Plug 't9md/vim-choosewin'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'lambdalisue/suda.vim'
"Plug 'dbeniamine/vim-mail'
"Plug 'rhysd/accelerated-jk'

" HTML
"Plug 'mattn/emmet-vim', { 'for': 'html' }
"Plug 'skammer/vim-css-color'
"Plug 'lepture/vim-jinja'

" 代码片段
Plug 'honza/vim-snippets'

" 美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'mg979/vim-xtabline'
Plug 'itchyny/vim-cursorword'
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-dark'
"Plug 'kristijanhusak/defx-icons'
"Plug 'kristijanhusak/defx-git'
Plug 'glepnir/dashboard-nvim'
Plug 'vwxyutarooo/nerdtree-devicons-syntax', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
Plug 'Yggdroot/indentLine', { 'for': 'python' }
Plug 'Yggdroot/indentLine', { 'for': 'cpp' }
Plug 'Yggdroot/indentLine', { 'for': 'html' }

" Python
Plug 'vim-python/python-syntax', { 'for': 'python' }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for': 'python'}
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'vim-python/python-syntax', { 'for': 'python' }
"Plug 'tweekmonster/django-plus.vim'
"Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}
"Plug 'mgedmin/python-imports.vim'

" Go
"Plug 'fatih/vim-go', { 'tag': '*', 'for': 'go' }

" C++
Plug 'bfrg/vim-cpp-modern', { 'for': 'cpp' }
" 补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" markdown
Plug 'godlygeek/tabular', { 'for': 'markdown'}
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()
