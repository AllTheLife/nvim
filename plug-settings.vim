" repl "
"nmap de ;Repl<CR>
"nmap en :ReplSend<CR>


" invoke with ' jw' "
"map wj <Plug>(choosewin)


" ranger "
let g:ranger_map_keys = 0
map <leader>ra :Ranger<CR>


" far "
map <C-p>fw :Farf<CR>

" vimpy "
"let g:vimpy_prompt_resolve = 1
"let g:vimpy_remove_unused = 1


" python "
let g:SimpylFold_docstring_preview = 1
"nmap <silent> <space>rn :Semshi rename<CR>
hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiVariable        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
let g:python_highlight_all = 1


" airline "
let g:airline#extensions#coc#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail"
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#tabline#show_buffers = "unique_tail"
let g:airline_powerline_fonts = 1
"let g:airline_theme='gruvbox'
let g:airline_theme='violet'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '/'
let g:airline_left_sep = ''
let g:airline_right_sep = ' '


" translator "
let g:translator_default_engines=['google', 'bing', 'youdao']


" toc "
map to :Toc<CR>


" Translate "
"nmap T <Plug>TranslateW
"vmap T <Plug>TranslateWV
"nmap <silent> tr <Plug>TranslateR
"vmap <silent> tr <Plug>TranslateRV


" tagbar "
map ta :TagbarToggle<CR>


" ipdb "
autocmd Filetype python inoremap debug __import__('ipdb').set_trace()
autocmd Filetype python noremap nd <esc>/__import__('ipdb').set_trace()<CR>dd


" HTML "
autocmd Filetype html inoremap ,b <esc>@ki


" FZF "
map <C-p>f~ :Files ~<CR>
map <C-p>f/ :Files /<CR>
map <C-p>f :Files<CR>
map <C-p>w :Ag<CR>
map <C-p>b :Buffers<CR>
map <C-p>l :Lines<CR>
map <C-p>h :History<CR>
let $FZF_DEFAULT_OPTS = '--layout=reverse'
"let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }


" NERDTree "
"nmap ne :NERDTreeToggle<CR>
"let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '__pycache__', '\.DS_Store', 'tags', '\idea$', '.gitignore']
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""let NERDTreeShowHidden=1
"let NERDTreeWinPos="right"
"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_conceal_nerdtree_brackets = 1
"let g:webdevicons_enable_airline_tabline = 1
"let g:webdevicons_enable_airline_statusline = 1
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
"let g:NERDTreeShowlineNumber=1
"let NERDTreeDirArrows=1
"let g:NERDTreeGitStatusIndicatorMapCustom = {
                "\ 'Modified'  :'✹',
                "\ 'Staged'    :'✚',
                "\ 'Untracked' :'✭',
                "\ 'Renamed'   :'➜',
                "\ 'Unmerged'  :'═',
                "\ 'Deleted'   :'✖',
                "\ 'Dirty'     :'✗',
                "\ 'Ignored'   :'☒',
                "\ 'Clean'     :'✔︎',
                "\ 'Unknown'   :'?',
                "\ }


" emmet "
"autocmd FileType html,css,jinja.html EmmetInstal
"let g:user_emmet_install_global = 0
"let g:user_emmet_expandabbr_key = '<c-q>'
"let g:user_emmet_leader_key = '<Tab>'
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
"let g:user_emmet_leader_key='Z'


" undotree "
map LK :UndotreeToggle<CR>


" go "
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2

" coc "
map YH :CocList yank<CR>
let g:coc_global_extensions = ['coc-pyright', 'coc-emmet', 'coc-vimlsp', 'coc-css', 'coc-json', 'coc-snippets', 'coc-yank', 'coc-word', 'coc-highlight']
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <C-n>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<C-n>" :
      \ coc#refresh()
inoremap <expr><C-u> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
if exists('*complete_info')
  inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> D :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<CR>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<CR>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<CR>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<CR>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<CR>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nmap \ :CocCommand<CR>
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-n>'
let g:coc_snippet_prev = '<c-e>'
imap <Tab> <Plug>(coc-snippets-expand-jump)
let g:coc_start_at_startup=0
function! CocTimerStart(timer)
    exec "CocStart"
endfunction
call timer_start(500,'CocTimerStart',{'repeat':1})
let g:trigger_size = 2 * 1048576
augroup hugefile
  autocmd!
  autocmd BufReadPre *
        \ let size = getfsize(expand('<afile>')) |
        \ if (size > g:trigger_size) || (size == -2) |
        \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
        \   exec 'CocDisable' |
        \ else |
        \   exec 'CocEnable' |
        \ endif |
        \ unlet size
augroup END
nmap T :CocCommand translator.popup<CR>
nmap tr :CocCommand translator.replace<CR>


" markdown "
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ' '
"let g:mkdp_path_to_chrome = "surf"
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:vim_markdown_folding_style_pythonic = 1
map <leader>s :MarkdownPreviewStop<CR>


" 美化 "
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let s:colors = {
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
\ }

colorscheme space-vim-dark
"colorscheme gruvbox


nmap <leader>op <Plug>(openbrowser-open)
vmap <leader>op <Plug>(openbrowser-open)


" jk "
"nmap j <Plug>(accelerated_jk_gj)
"nmap k <Plug>(accelerated_jk_gk)


" vimspector "
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
noremap <leader>db :set splitbelow<CR>:sp<CR>:res -13<CR>:term g++ % -g<CR>
noremap <leader>cd :VimspectorReset<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text= texthl=SpellBad


" defx "
"nnoremap <silent> <Leader>e
"\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>

"function! s:defx_mappings() abort
	"setlocal signcolumn=no
    "nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()
    "nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
    "nnoremap <silent><buffer><expr> c
                "\ defx#do_action('copy')
    "nnoremap <silent><buffer><expr> m
                "\ defx#do_action('move')
    "nnoremap <silent><buffer><expr> p
                "\ defx#do_action('paste')
    "nnoremap <silent><buffer><expr> i
                "\ defx#do_action('multi',[['drop','split']])
    "nnoremap <silent><buffer><expr> K
                "\ defx#do_action('new_directory')
    "nnoremap <silent><buffer><expr> N
                "\ defx#do_action('new_file')
""    nnoremap <silent><buffer><expr> M
""                \ defx#do_action('new_multiple_files')
    "nnoremap <silent><buffer><expr> C
                "\ defx#do_action('toggle_columns',
                "\                'mark:indent:icon:filename:type:size:time')
""    nnoremap <silent><buffer><expr> S
""                \ defx#do_action('toggle_sort', 'time')
    "nnoremap <silent><buffer><expr> dd
                "\ defx#do_action('remove')
    "nnoremap <silent><buffer><expr> rn
                "\ defx#do_action('rename')
""    nnoremap <silent><buffer><expr> !
""                \ defx#do_action('execute_command')
   "nnoremap <silent><buffer><expr> yy
               "\ defx#do_action('yank_path')
""    nnoremap <silent><buffer><expr> .
""                \ defx#do_action('toggle_ignored_files')
""    nnoremap <silent><buffer><expr> ;
""                \ defx#do_action('repeat')
    "nnoremap <silent><buffer><expr> h
                "\ defx#do_action('close_tree')
""    nnoremap <silent><buffer><expr> ~
""                \ defx#do_action('cd')
""    nnoremap <silent><buffer><expr> q
""                \ defx#do_action('quit')
    "nnoremap <silent><buffer><expr> <Space>
                "\ defx#do_action('toggle_select') . 'j'
    "nnoremap <silent><buffer><expr> *
                "\ defx#do_action('toggle_select_all')
    "nnoremap <silent><buffer><expr> j
                "\ line('.') == line('$') ? 'gg' : 'j'
    "nnoremap <silent><buffer><expr> k
                "\ line('.') == 1 ? 'G' : 'k'
    "nnoremap <silent><buffer><expr> <C-l>
                "\ defx#do_action('redraw')
    "nnoremap <silent><buffer><expr> <C-g>
                "\ defx#do_action('print')
    "nnoremap <silent><buffer><expr> <CR> defx#do_action('multi', ['drop'])
"endfunction

"function! s:defx_toggle_tree() abort
    "" Open current file, or toggle directory expand/collapse
    "if defx#is_directory()
        "return defx#do_action('open_or_close_tree')
    "endif
    "return defx#do_action('multi', ['drop'])
"endfunction

"call defx#custom#option('_', {
	"\ 'columns': 'indent:git:icons:filename',
	"\ 'winwidth': 25,
	"\ 'split': 'vertical',
	"\ 'direction': 'botright',
	"\ 'listed': 1,
	"\ 'show_ignored_files': 0,
	"\ 'root_marker': '≡ ',
	"\ 'ignored_files':
	"\     ',__pycache__'
	"\   . ',.*'
	"\ })

"autocmd FileType defx call s:defx_mappings()


" choose win "
nmap  cw  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1


" dashboard "
let g:dashboard_default_executive = 'fzf'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
"let g:dashboard_custom_header =[
    "\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡖⠁⠀⠀⠀⠀⠀⠀⠈⢲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⢀⣀⣤⣤⣤⣤⣀⡀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣔⢿⡿⠟⠛⠛⠻⢿⡿⣢⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣷⣤⣀⡀⢀⣀⣤⣾⣿⣿⣿⣷⣶⣤⡀⠀⠀⠀⠀ ',
    "\'⠀⠀⢠⣾⣿⡿⠿⠿⠿⣿⣿⣿⣿⡿⠏⠻⢿⣿⣿⣿⣿⠿⠿⠿⢿⣿⣷⡀⠀⠀ ',
    "\'⠀⢠⡿⠋⠁⠀⠀⢸⣿⡇⠉⠻⣿⠇⠀⠀⠸⣿⡿⠋⢰⣿⡇⠀⠀⠈⠙⢿⡄⠀ ',
    "\'⠀⡿⠁⠀⠀⠀⠀⠘⣿⣷⡀⠀⠰⣿⣶⣶⣿⡎⠀⢀⣾⣿⠇⠀⠀⠀⠀⠈⢿⠀ ',
    "\'⠀⡇⠀⠀⠀⠀⠀⠀⠹⣿⣷⣄⠀⣿⣿⣿⣿⠀⣠⣾⣿⠏⠀⠀⠀⠀⠀⠀⢸⠀ ',
    "\'⠀⠁⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⢇⣿⣿⣿⣿⡸⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠈⠀ ',
    "\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
    "\'⠀⠀⠀⠐⢤⣀⣀⢀⣀⣠⣴⣿⣿⠿⠋⠙⠿⣿⣿⣦⣄⣀⠀⠀⣀⡠⠂⠀⠀⠀ ',
    "\'⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠉⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀ ',
    "\]
let g:dashboard_custom_header = [
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\ '                                                       ',
\]



" NERDTree "
"noremap NE :NERDTree<CR>
noremap <leader>e :NERDTreeToggle<CR>
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
let g:NERDTreeDirArrowExpandable = 'ﴙ'
let g:NERDTreeDirArrowCollapsible = 'ﴚ'
let g:NERDTreeWinPos = "right"


" Suda.vim "
let g:suda_smart_edit = 1
