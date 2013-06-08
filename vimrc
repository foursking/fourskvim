"=============================================================================
"   CreateTime: 2012-09-08 21:08:53
"       Author: yifeng@leju.com
"   LastChange: 2013-05-15 16:49:15
"=============================================================================
" check MySys 检测当先系统类型
function! MySys()
    if has("win32")
        return "windows"
    elseif has("unix")
        return "linux"
    endif
endfunction

"}}}

"----------------自己设定的function {{{

" 获取当前路径
function! CurDir()
    let $home_vim = ""
    let curdir = substitute(getcwd(), $home_vim, "", "g")
    return curdir
endfunction


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

" 当编辑php文件的时候，导入PHP函数列表，按 ctrl+n 自动补全
" au FileType php call AddPHPFuncList() " 有neocomplacache都不用这些函数了，自带的
function! AddPHPFuncList()
    set dict-=~/.vim/php_funclist.txt dict+=~/.vim/php_funclist.txt
    set complete-=k complete+=k
endfunction

" 当编辑python文件的时候，导入python函数列表，按 ctrl+n 自动补全
" au FileType python call AddPythonFuncList() " 有neocomplacache都不用这些函数了，自带的
function! AddPythonFuncList()
    set dict-=~/.vim/pydiction dict+=~/.vim/pydiction
    set complete-=k complete+=k isk-=., isk+=.,
    " set complete+=k~/.vim/pydiction isk+=.,
endfunction


"--------- setting the langmenu{{{
set fileencoding=utf-8
"set fileencodings=utf-8,gb2312,ucs-bom,euc-cn,euc-tw,gb18030,gbk,cp936 
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1  
"set fileencodings=utf-8,chinese,latin1
set ambiwidth=double 					"防止特殊字符显示错误
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim   菜单栏
"source $VIMRUNTIME/mswin.vim  模拟win快捷键 
"}}}


" 运行mac_vim
if has("gui_macvim") 
    " 取消默认的快捷键
    "let macvim_skip_cmd_opt_movement = 1
    "let macvim_hig_shift_movement = 1
    "设置背景透明度
    "set transparency=10
    set macmeta     "设置macmeta
    set linespace=2 "行间距
    set columns=180 "初始化窗口宽度
    set lines=55    "初始化窗口高度
    colorscheme molokai
    set guifont=Monaco:h12
    "au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorline   " 高亮当前行
    "au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorcolumn " 高亮当前列
else
    set t_Co=256       " 让终端支持256色，否则很多配色不会正常显示，molokai就是其中之一
    colorscheme molokai
    set linespace=2
    set columns=180
    set lines=45
    " colorscheme evening
endif

" => Setting VIM and VIMRUNTIME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if MySys() == "windows"
    let $MYVIM      = $PROGRAMFILES."\\Vim"
    let $MYRUNTIME  = $PROGRAMFILES."\\Vim\\vim73"
    let $MYVIMRC    = $PROGRAMFILES."\\Vim\\vimrc"
    let $MYVHOSTS   = "d://AppServ/Apache2.2/conf/httpd-vhosts_newesf.conf"
    "let $DESKTOP   = $USERPROFILE."\\桌面"
    let $MYHOSTS    = "c://windows/system32/drivers/etc/hosts"
    let $EJU        = "D://workspace/esf.eju.com"
elseif MySys() == "linux"
    "	let $MYVIM      = $HOME."/usr/four/vim"
    "	let $VIMRUNTIME = $HOME."/usr/four/vim/share"
    let $MYVIMRC    = "/Users/mac/.vimrc"
    "	let $DESKTOP    = $HOME
    let $MYHOSTS    = "/etc/hosts" 
    "else
endif

"---------------界面选项{{{

if MySys() == "windows"
    set guifont=YaHei\ Mono:h11 "设置中文字体
    au GUIEnter * simalt ~x     "窗口最大化
else
    "	au GUIEnter * call MaximizeWindow()
endif

"gvim 标签定制
set guitablabel=%{ShortTabLabel()}

"vim 标签定制
set tabline=%!MyTabLine()
"}}}


"隐藏任务栏&菜单栏&工具条
set guioptions-=m
set guioptions-=T



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           ====  通用设置 ====                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                       "关闭兼容vi模式
filetype on
filetype plugin indent on
syntax enable
syntax on
let mapleader      = ","               "设置leader
let g:mapleader    = ","
let maplocalleader = ","
set history=400                        "设置历史记录数



"界面设置
set cmdheight=1                        "命令行（在状态行下）的高度，默认为1，这里是2
set helplang=cn                        "设置中文帮助
set showcmd                            "屏幕最后一行显示部分命令 如果慢的话可以删掉
set autochdir                          "自动切换文件目录
set fileformat=unix                    "设置文件格式 
set tabstop=4                          "设置tab字符 
set shiftwidth=4                       "设置shift宽度
set sts=4
set nobackup                           "不生成备份文件
set noswapfile                         "不要生成swap文件，当buffer被丢弃的时候隐藏它
set nu                                 "设置行号
set showmatch                          "高亮显示匹配的括号
set iskeyword+=_,$,@,%,#,-             "带有如下符号的单词不要被换行分割
set wildignore=*.o,*.obj,*.bak,*.exe   "Tab补全时忽略这些忽略这些
set showtabline=1                      "设置标签页 0永远不显示 1 两个以上显示 2 永远显示
set foldenable                         "用空格键来开关折叠
set foldmethod=manual
set clipboard+=unnamed                 "共享外部剪贴板 in windows
set magic                              "正则 Set magic on
set noerrorbells                       "取消滴滴声 :) No sound on errors.
set novisualbell
set whichwrap=b,s,<,>,[,]              "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set et                                 "编辑时将所有tab替换为空格
set ambiwidth=double                   "防止特殊符号无法正常显示，如五角星等
set laststatus=2
set autoread                           "当文件内容被其他编辑器改变时自动加载
set novisualbell                       "不要闪烁
set modifiable                         "允许修改缓冲区内容
set fillchars=vert:\ ,stl:\ ,stlnc:\   " 在被分割的窗口间显示空白，便于阅读
set hidden

" Search options
set incsearch                          "从键入时就开始匹配
set hlsearch                           "高亮搜索结果
set ignorecase smartcase               "搜索时不区分大小写，如果键入了大写字母则区分大小写 
set hidden

set modifiable
set write

"高亮字符，让其不受100列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%101v.*'

"开启语法高亮



"tab space display '----'
set list
set listchars=tab:--,trail:-
hi SpecialKey ctermfg=77 guifg=#696969

"可以在buffer的任何区域使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
au BufWinLeave *.* silent mkview
au BufWinEnter *.* silent loadview
" => Files and backups


"set guioptions-=m       " 隐藏菜单栏
"set guioptions-=T        " 隐藏工具栏
"set guioptions-=L       " 隐藏左侧滚动条
"set guioptions-=r       " 隐藏右侧滚动条
"set guioptions-=b       " 隐藏底部滚动条
"set showtabline=0       " 隐藏Tab栏

":tabnew	新建标签页
":tabs	显示已打开标签页的列表
":tabc	关闭当前标签页
":tabn	移动到下一个标签页
":tabp	移动到上一个标签页
":tabfirst	移动到第一个标签页
":tablast	移动到最后一个标签页


"---------------Files and backups{{{

" 把html文件当作xml文件来编辑，因为html按=号格式化有问题，而xml没问题
"au FileType smarty,html set ft=xml 
au FileType smarty,html set syntax=html " 语法高亮还是用html自身的高亮
" xmledit
"let xml_use_xhtml = 1


" JavaScript 语法高亮
"au FileType html,htm,smarty,javascript let g:javascript_enable_domhtmlcss = 1

" 给 Javascript 文件添加 Dict
"au FileType html,htm,smarty,javascript setlocal dict+=~/.vim/dict/javascript.dict

" 给 CSS 文件添加 Dict
"au FileType html,htm,smarty,css setlocal dict+=~/.vim/dict/css.dict

" vim不会像认php、java等一样认得json，所以需要加这句，遇到.json后缀的，告诉一下vim这个是json
au BufRead,BufNewFile *.json set filetype=json

"au FileType php,python,c,java,javascript,html,htm,smarty,json call SetOption()

"}}}


"----------------自己设定的map ab{{{
"去掉windows下编辑器产生的 
noremap  <C-M> :%s/<C-V><cr>//ge<cr>'tzt'm  
" => Command current dir
map <leader>cmd :lcd %:p:h<CR>:!cmd<CR>
"Shift+F12 删除所有行未尾空格
nmap <S-F12> :%s,/s/+$,,g
"设置ab 快捷键
ab pri print_r($_GET);exit;
"定义 thi  $this->
ab calss class

"标签页跳转
map <M-q> gT
map <M-e> gtj
"关闭当前标签页
map <M-x> :tabc<cr>
"新建标签页
map <M-n> :tabnew<cr>
"map , as <leader> key instead of \ by default
"jj to ESC
inoremap jj <ESC>
"inoremap ?? =
""""""""""""""""""""""""""""""""""""""""
nmap <F9> <Esc>:!ctags -R *<CR>
""""""""""""""""""""""""""""""""""""""""
map <M-4> O+71a-<ENTER><ESC>

"ALT+6
map <M-5> O#<ESC>33a<<ESC>
map <M-6> O#<ESC>33a><ESC>
"ALT+7
map <M-7> O//+71a-<ENTER><ESC>j
"ALT+8插入下一部分
map <M-8> O/*<ESC>72a-<ESC>a*/<ENTER>/*<ESC>22a-<ESC>a<ESC>27a<space><ESC>23a-<ESC>a*/<ENTER>/*<ESC>22a-<ESC>8a<space><ESC>aThe Next Part<ESC>6a<space><ESC>23a-<ESC>a*/<ENTER>/*<ESC>22a-<ESC>27a<space><ESC>23a-<ESC>a*/<ENTER>/*<ESC>72a-<ESC>a*/<ESC>j

"定义mm跳回最近修改的地方
map mm '.zz
nmap n nzz
nmap N Nzz
map ww :w!<Enter>
map vp :vsp+enew<Enter>
map sp :sp+enew<Enter>
map qq :q<Enter>
map QQ :q!<Enter>

"定义剪切板快捷键
inoremap ;; <Esc>A;<Enter>
"定义折叠
map QQ :q!<Enter>
"map == <Esc>gg=G
map ff zf
"修改文件编码
map <leader>ft :set fileencoding=utf-8<cr> 
map <leader>fb :set fileencoding=gbk<cr> 

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" set fileformats=unix,dos,mac  设置文本的格式,Linux的svn经常需要用到
nmap <leader>fd :se fileformat=dos<CR>
nmap <leader>fu :se fileformat=unix<CR>
"Fast reloading of the .vimrc
map <silent> <leader>ss :source $MYVIMRC<CR>
"Fast editing of .vimrc
map <silent> <leader>ee :tabnew $MYVIMRC<CR>
"Fast editing of hosts
map <silent> <leader>pp :tabnew $MYHOSTS<CR>
"Fast editing of conf 
map <silent> <leader>qq :tabnew $MYVHOSTS<CR>
"When .vimrc is edited, reload it
if has("autocmd")
    "autocmd! bufwritepost vimrc source $MYVIMRC
endif

" remove windows ^M
map <leader>M :%s/\r//g <cr>
"delete to the end of line
map DD d$a
" copy to the end of line
map YY y$
" jump to the line head
map HH ^
" jump to the line end
map LL $

"定义输入快捷键
imap <M-h> <Left>
imap <M-j> <Down>
imap <M-k> <Up>
imap <M-l> <Right>
"}}}

"------------------ Bundle plugin settiny {{{


"============================"
"      ctags setting 
"============================"


"============================"
"  neocomplcache补全插件
"============================"
let g:neocomplcache_enable_at_startup=1
"let g:NeroCompCache_DisableAutoComplete=1


"============================"
"  supertab
"============================"

let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'


"    NerdTree setting
"============================"
map <C-B> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

"   let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
"   let NERDTreeChDirMode=2     "setting root dir in NT also sets VIM's cd
"   let NERDTreeQuitOnOpen=1 "the Nerdtree window will be close after a file is opend.
"   let NERDTreeShowHidden=1
"   let NERDTreeKeepTreeInNewTab=1

"定义NERDTree快捷键
map <C-B> :NERDTreeToggle<CR>



"============================"
"    pathogen  setting
"============================"
"开启pathogen插件
call pathogen#infect()

"============================"
"    tagbar    setting
"============================"
"设置ctags路径
if  MySys() == 'windows'
    let g:tagbar_ctags_bin = 'C:\Program Files (x86)\Vim\ctags'
endif
nmap <c-n> :TagbarToggle<CR>   "设置快捷键
let g:tagbar_width = 30       "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
let g:tagbar_right = 1        "在右侧



"============================"
"    CtrlP setting
"============================"
"map :CtrlP 
map <leader>ff :CtrlP<CR>


"============================"
"    snipMate  setting
"============================"
filetype plugin on 


"============================"
"    AuthorInfo  setting
"============================"
let g:vimrc_author = "yifeng@leju.com"
"ALT+a 更新用户信息
nmap <M-o> :AuthorInfoDetect<cr> 
"url http://www.vim.org/scripts/script.php?script_id=2902

"============================"
"      Indent Guides
"============================"
let g:indent_guides_guide_size=1
map rr :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction

"============================"
"     Fenc View 
"============================"
"let g:fencview_autodetect = 1  "打开文件时自动识别编码
"let g:fencview_checklines = 10 "检查前后10行来判断编码

":FencAutoDetect    自动检测编码
":FencView          列出所有编码 

syntax on "syntax highlighting on 
filetype plugin on 
au BufEnter *.txt setlocal ft=txt


   
"============================"
"     DoxygenToolkit
"============================"
let g:DoxygenToolkit_authorName="foursking, lyf021408@gmail.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1


let g:DoxygenToolkit_interCommentTag = "* "
let g:DoxygenToolkit_startCommentTag = "/*"
let g:DoxygenToolkit_endCommentTag = "*/"
let g:DoxygenToolkit_startCommentBlock = "//!< "
let g:DoxygenToolkit_endCommentBlock = ""


"============================"
"     vim-youdao
"============================"
vnoremap <Leader>yd <ESC>:Ydt<CR>


"============================"
"     vim-markdown
"============================"
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd



"============================"
"     vim-syntastic
"============================"
let g:syntastic_check_on_open=1
""phpcs，tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"










