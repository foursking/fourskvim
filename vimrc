runtime! config/vundle.vim
runtime! config/function.vim
runtime! config/script.vim


"--------- setting the langmenu{{{
set fileencoding=utf-8
"set fileencodings=utf-8,gb2312,ucs-bom,euc-cn,euc-tw,gb18030,gbk,cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1
"set encoding=utf-8
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
    set transparency=8
    set macmeta     "设置macmeta
    set linespace=2 "行间距
    set columns=180 "初始化窗口宽度
    set lines=55    "初始化窗口高度
    "set guifont=Monaco:h12
    "au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorline   " 高亮当前行
    "au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorcolumn " 高亮当前列
else
    set linespace=2
    set columns=180
    set lines=45
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 9

    "set guifont=Monospace\ 10
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
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
elseif MySys() == "linux"
    "let $MYVIM      = $HOME."/usr/four/vim"
    "let $VIMRUNTIME = $HOME."/usr/four/vim/share"
    let $MYVIMRC    = "/Users/mac/.vimrc"
    "let $DESKTOP    = $HOME
    let $MYHOSTS    = "/etc/hosts"
    "else
endif

"---------------界面选项{{{

if MySys() == "windows"
    set guifont=YaHei\ Mono:h11 "设置中文字体
    au GUIEnter * simalt ~x     "窗口最大化
else
    "au GUIEnter * call MaximizeWindow()
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
set t_Co=256                           "让终端支持256色，否则很多配色不会正常显示，molokai就是其中之一
set background=dark
colorscheme molokai                    "颜色设置
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
set fillchars=vert:\ ,stl:\ ,stlnc:\   "在被分割的窗口间显示空白，便于阅读
set hidden
set modifiable
set write
set wildmenu                           "候选词出现在界面上
set listchars=tab:▸\ ,eol:¬
"set paste                              "终端code格式

set tags=./tags,./TAGS,tags,TAGS,./../tags,./../../tags,./../../../tags



"set guioptions-=m                     "隐藏菜单栏
"set guioptions-=T                     "隐藏工具栏
"set guioptions-=L                     "隐藏左侧滚动条
"set guioptions-=r                     "隐藏右侧滚动条
"set guioptions-=b                     "隐藏底部滚动条
"set showtabline=0                     "隐藏Tab栏
":tabnew                               "新建标签页
":tabs                                 "显示已打开标签页的列表
":tabc                                 "关闭当前标签页
":tabn                                 "移动到下一个标签页
":tabp                                 "移动到上一个标签页
":tabfirst                             "移动到第一个标签页
":tablast                              "移动到最后一个标签页


""搜索设置
set incsearch                          "从键入时就开始匹配
set hlsearch                           "高亮搜索结果
set ignorecase smartcase               "搜索时不区分大小写，如果键入了大写字母则区分大小写


""高亮字符，让其不受100列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%101v.*'


""tab space 显示 '----'
"set list
"set listchars=tab:--,trail:-
"hi SpecialKey ctermfg=77 guifg=#696969

""可以在buffer的任何区域使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key



""自动载入
"au BufWinLeave * silent mkview
"au BufWinEnter * silent loadview
"" => Files and backups


"---------------Files and backups{{{

" 把html文件当作xml文件来编辑，因为html按=号格式化有问题，而xml没问题
"au FileType smarty,html set ft=xml
au FileType smarty,html set syntax=html " 语法高亮还是用html自身的高亮

" JavaScript 语法高亮
"au FileType html,htm,smarty,javascript let g:javascript_enable_domhtmlcss = 1

" 给 Javascript 文件添加 Dict
"au FileType html,htm,smarty,javascript setlocal dict+=~/.vim/dict/javascript.dict

" 给 CSS 文件添加 Dict
"au FileType html,htm,smarty,css setlocal dict+=~/.vim/dict/css.dict

" vim不会像认php、java等一样认得json，所以需要加这句，遇到.json后缀的，告诉一下vim这个是json
au BufRead,BufNewFile *.json set filetype=json

"au FileType php,python,c,java,javascript,html,htm,smarty,json call SetOption()

" Objective-C
autocmd! BufNewFile,BufRead *.m set filetype=objc

" ActionScript
autocmd! BufNewFile,BufRead *.as set filetype=actionscript
autocmd! BufNewFile,BufRead *.mxml set filetype=mxml

" SCSS
autocmd! BufNewFile,BufRead *.scss set filetype=scss.css

" eRuby
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html

" JSON
autocmd! BufNewFile,BufRead *.json set filetype=javascript

" GitIgnore
autocmd! BufNewFile,BufRead *.gitignore set filetype=gitignore

" ZSH
autocmd! BufNewFile,BufRead *.zsh-theme set filetype=zsh

" Nginx Config
autocmd! BufNewFile,BufRead nginx.conf set filetype=nginx

" CocoaPods
autocmd! BufNewFile,BufRead Podfile,*.podspec set filetype=ruby

" Txt
autocmd BufNewFile,Bufread *.txt set syntax=help

"}}}

ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>



" Python
if executable("python")
  autocmd BufRead,BufNewFile *.py map <F5> :% w !python<CR>
else
  autocmd BufRead,BufNewFile *.py map <F5> :echo "you need to install Python first!"<CR>
endif

" Php
if executable("php")
  autocmd BufRead,BufNewFile *.php map <F5> :% w !php<CR>
else
  autocmd BufRead,BufNewFile *.php map <F5> :echo "you need to install php first!"<CR>
endif

" VimScript
autocmd BufRead,BufNewFile *.vim map <F5> :source %<CR>:echon "script reloaded!"<CR>


"去掉windows下编辑器产生的
nmap  <C-M> :%s/<C-V><cr>//ge<cr>'tzt'm
" => Command current dir
nmap <leader>cmd :lcd %:p:h<CR>:!cmd<CR>
"Shift+F12 删除所有行未尾空格
nmap <S-F12> :%s,/s/+$,,g

"设置ab 快捷键
ab pri print_r($_GET);exit;
ab raw raw_input("> ")
"定义 thi  $this->
ab calss class


"map , as <leader> key instead of \ by default
"jj to ESC
imap jj <ESC>
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
map ww :w!<Enter>
map vp :vsp+enew<Enter>
map sp :sp+enew<Enter>
map QQ :q<Enter>
map ff zf
"delete to the end of line
map DD d$a
"copy to the end of line
map YY y$
"jump to the line head
map HH ^
"jump to the line end
map LL $
map Y "+y
map P "+p

"标签页跳转
map <M-q> gT
map <M-e> gt
"关闭当前标签页
map <M-x> :tabc<cr>
"新建标签页
map <M-n> :tabnew<cr>
"定义剪切板快捷键
"remove windows ^M
map <leader>M :%s/\r//g <cr>
"修改文件编码
map <leader>ft :set fileencoding=utf-8<cr>
map <leader>fb :set fileencoding=gbk<cr>

nmap n nzz
nmap N Nzz

"set fileformats=unix,dos,mac  设置文本的格式,Linux的svn经常需要用到
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


imap ;; <Esc>A;<Enter>
"定义输入快捷键
imap <M-h> <Left>
imap <M-j> <Down>
imap <M-k> <Up>
imap <M-l> <Right>



"定义折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"command! MyCodeStyleOn %s/^\(\s*\)\([_a-zA-Z].*\)\n\s*{$/\1\2{/ge
"command! MyCodeStyleOff %s/^\(\s*\)\([_a-zA-Z].*\){$/\1\2\r\1{/ge

"noremap <c-F5> :MyCodeStyleOn<cr>
"noremap <c-F6> :MyCodeStyleOff<cr>


nnoremap <leader>md :silent !open -a Marked.app '%:p'<cr>

"}}}
