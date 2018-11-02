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


function MyCopy(type, position) 
    if a:position == 'start'
        let line_num = line(".")
    else
        let line_num = a:position
    endif
    if a:type == "class" 
        call setline(line_num,"/**") 
        call append(line_num+0," * @file ".expand("%")) 
        call append(line_num+1," * @touch date ".strftime("%x")) 
        call append(line_num+2," * @author Setsuna.F <lyf021408@gmail.com>") 
        call append(line_num+3," * @package ixydb") 
        call append(line_num+4," * @Copyright © ".strftime("%Y")." All rights reserved.") 
        "call append(line_num+5," * @license http://www.zend.com/license/3_0.txt PHP License 3.0") 
        "call append(line_num+6," * @version $Id$ ") 
        call append(line_num+5," */") 
    else 
        if a:type == "func" 
            call setline(line_num," /**") 
            call append(line_num+0," * @access ") 
            call append(line_num+1," * @author Setsuna.F <lyf021408@gmail.com>") 
            call append(line_num+2," * @param") 
            call append(line_num+3," * @return") 
            call append(line_num+4," */") 
        else 
            call setline(line_num," /**") 
            call append(line_num+0," * @access ") 
            call append(line_num+1," * @var ") 
            call append(line_num+2," */") 
        endif 
    endif
endfunction

map <C-I> <Esc>:call MyCopy("class",'start')<CR><Esc>10j$a
map df <Esc>:call MyCopy("func", 'start')<CR><Esc>
map dv <Esc>:call MyCopy("var", 'start')<CR><Esc>



