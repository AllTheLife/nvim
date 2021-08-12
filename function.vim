function! OpenFloatingWin()
  let height = &lines - 3
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)
  let opts = {
        \ 'relative': 'editor',
        \ 'row': height * 0.3,
        \ 'col': col + 30,
        \ 'width': width * 2 / 3,
        \ 'height': height / 2
        \ }
  let buf = nvim_create_buf(v:false, v:true)
  let win = nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&winhl', 'Normal:Pmenu')
  setlocal
        \ buftype=nofile
        \ nobuflisted
        \ bufhidden=hide
        \ nonumber
        \ norelativenumber
        \ signcolumn=no
endfunction


function! s:LastTab()
    let tab=tabpagenr()
    tabnext
    execute "tabmove ".tabpagenr('$')
    execute "tabn ".tab
endfunction


func! Run()
    exec "w"
    if &filetype == 'python'
        set splitbelow
        :sp
        :res -13
        :term run_python %
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    elseif &filetype == 'html'
        set splitbelow
        :sp
        :res -13
        :term firefox %
    elseif &filetype == 'go'
        set splitbelow
        :sp
        :res -13
        :term go run %
    elseif &filetype == 'cpp'
        set splitbelow
        :sp
        :res -13
        :term compile %
    elseif &filetype == 'sh'
        set splitbelow
        :sp
        :res -13
        :term compile_sh %
    endif
endfunc
