"----------------自己设定的function {{{
" check MySys 检测当先系统类型
function! MySys()
    if has("win32")
        return "windows"
    elseif has("unix")
        return "linux"
    endif
endfunction

" 获取当前路径
function! CurDir()
    let $home_vim = ""
    let curdir = substitute(getcwd(), $home_vim, "", "g")
    return curdir
endfunction

" Run it
function! Runit()
  exec "w"
    if &filetype == 'c'
        exec "!gcc  % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'php'
        exec "!php %"
    elseif &filetype =='python'
        exec "!python %"
    elseif &filetype=='ruby'
        exec "!ruby %"
    elseif &filetype=='javascript'
        exec "!js %"
    elseif &filetype=='sh'
        exec "!sh %"
    elseif &filetype=='go'
        exec "!go build %"
        exec "! ./%<"
    elseif &filetype=='coffee'
        exec "!coffee %"
    endif
endfunc


function! ShortTabLabel ()
    let bufnrlist = tabpagebuflist (v:lnum)
    let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
    let filename = fnamemodify (label, ':t')
    return filename
endfunction


function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " 选择高亮
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " 设置标签页号 (用于鼠标点击)
        let s .= '%' . (i + 1) . 'T'

        " MyTabLabel() 提供完整路径标签 MyShortTabLabel 提供文件名标签
        let s .= ' %{MyShortTabLabel(' . (i + 1) . ')} '
    endfor

    " 最后一个标签页之后用 TabLineFill 填充并复位标签页号
    let s .= '%#TabLineFill#%T'

    " 右对齐用于关闭当前标签页的标签
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999Xclose'
    endif

    return s
endfunction

" 文件名标签
function! MyShortTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let label = bufname (buflist[tabpagewinnr (a:n) -1])
    let filename = fnamemodify (label, ':t')
    return filename
endfunction
"完整路径标签
function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    return bufname(buflist[winnr - 1])
endfunction


" 当编辑python文件的时候，导入python函数列表，按 ctrl+n 自动补全
" au FileType python call AddPythonFuncList() " 有neocomplacache都不用这些函数了，自带的
"function! AddPythonFuncList()
"    set dict-=~/.vim/pydiction dict+=~/.vim/pydiction
"    set complete-=k complete+=k isk-=., isk+=.,
"    " set complete+=k~/.vim/pydiction isk+=.,
"endfunction
"
" Remove trailing whitespace when writing a buffer, but not for diff files.
" 自动去除无效空白，包括行尾和文件尾
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
" function! RemoveTrailingWhitespace()
"     if &ft != "diff"
"         let b:curcol = col(".")
"         let b:curline = line(".")
"         silent! %s/\s\+$//
"         silent! %s/\(\s*\n\)\+\%$//
"         call cursor(b:curline, b:curcol)
"     endif
" endfunction
" autocmd BufWritePre * call RemoveTrailingWhitespace()
