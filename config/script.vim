"------------------ Bundle plugin settiny {{{

"============================"
"      ctags setting
"============================"

"---Powerline setting {{{
"============================"
"let g:Powerline_colorscheme='solarized256'
"let g:Powerline_symbols = 'fancy'
" }}}

"--- neocomplcache setting {{{
let g:neocomplcache_enable_at_startup=1
"let g:NeroCompCache_DisableAutoComplete=1


" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplcache#smart_close_popup()
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" }}}





"---supertab setting {{{
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'
" }}}


"---NerdTree setting {{{
map <C-B> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1

"let NERDTreeKeepTreeInNewTab=1
let NERDChristmasTree=1										" 类似圣诞树的显示方式
let NERDTreeAutoCenter=1									" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
"let NERDTreeMouseMode=2									" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeShowBookmarks=1									" 是否默认显示书签列表
let NERDTreeShowFiles=1										" 是否默认显示文件
let NERDTreeShowHidden=1									" 是否默认显示隐藏文件
let NERDTreeShowLineNumbers=0								" 是否默认显示行号
let NERDTreeWinPos='left'									" 窗口位置（'left' or 'right'）
let NERDTreeWinSize=30										" 窗口宽度
"let NERDTreeQuitOnOpen = 1									" 当通过NERD Tree打开文件自动退出NERDTree界面
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
"定义NERDTree快捷键
map <C-B> :NERDTreeToggle<CR>
" }}}




"---tagbar setting {{{
"设置ctags路径
if  MySys() == 'windows'
    let g:tagbar_ctags_bin = 'C:\Program Files (x86)\Vim\ctags'
elseif MySys() == 'unix'
    let g:tagbar_ctags_bin = '/usr/bin/ctags'
endif

nmap <c-n> :TagbarToggle<CR>   "设置快捷键
let g:tagbar_width = 30       "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
let g:tagbar_right = 1        "在右侧

" }}}

"---CtrlP {{{
map <c-c> :CtrlP<CR>
noremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
"let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=10
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" <C-Z> 标注打开文件
" <C-O> 打开
" <C-T> 新标签打开
" <c-w><c-o> 窗口最大化
" }}}





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



" Fenc View setting {{{
"let g:fencview_autodetect = 1  "打开文件时自动识别编码
"let g:fencview_checklines = 10 "检查前后10行来判断编码

":FencAutoDetect    自动检测编码
":FencView          列出所有编码
" }}}



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


"---vim-youdao setting {{{
vnoremap <Leader>yd <ESC>:Ydt<CR>
" }}}


"---vim-markdown setting {{{
"============================"
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd
au BufEnter *.txt setlocal filetype=txt
" }}}



"---vim-syntastic setting {{{
let g:syntastic_check_on_open=1
""phpcs，tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"
" }}}




"--- vim-surround setting {{{
" :h surround
"
"  Old text                  Command     New text ~
"  "Hello *world!"           ds"         Hello world!
"  [123+4*56]/2              cs])        (123+456)/2
"  "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
"  if *x>3 {                 ysW(        if ( x>3 ) {
"  my $str = *whee!;         vllllS'     my $str = 'whee!';
"  Hello *world!"           cs"'        'Hello world!'
"  Hello *world!"           cs"<q>      <q>Hello world!</q>
"  (123+4*56)/2              cs)]        [123+456]/2
"  (123+4*56)/2              cs)[        [ 123+456 ]/2
"  <div>Yo!*</div>           cst<p>      <p>Yo!</p>
"
"  hello* world               v4lS&      hello &world&
" }}}


"---vim-easymotion setting {{{
":h easymotion
"<leader><leader>w for word
"<leader><leader>c for character
" }}}



"---vim-yankring setting {{{

" }}}



"--- vim-mark setting {{{
" mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。
" \m  mark or unmark the word under (or before) the cursor
" \r  manually input a regular expression. 用于搜索.
" \n  clear this mark (i.e. the mark under the cursor), or clear all
" highlighted marks .
" " \*  当前MarkWord的下一个     \#  当前MarkWord的上一个
" " \/  所有MarkWords的下一个    \?  所有MarkWords的上一个

nmap <silent> <Leader>hl <Plug>MarkSet
vmap <silent> <Leader>hl <Plug>MarkSet
nmap <silent> <Leader>hh <Plug>MarkClear
vmap <silent> <Leader>hh <Plug>MarkClear
nmap <silent> <Leader>hr <Plug>MarkRegex
vmap <silent> <Leader>hr <Plug>MarkRegex
" }}}



"--- vim-rainbowparentheses {{{
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au Syntax * call rainbow_parentheses#toggleall()
"
":RainbowParenthesesToggle       " Toggle it on/off
":RainbowParenthesesLoadRound    " (), the default when toggling
":RainbowParenthesesLoadSquare   " []
":RainbowParenthesesLoadBraces   " {}
":RainbowParenthesesLoadChevrons " <>
"call RainbowParenthesesLoadSquare()
"call rainbow#activate()
" }}}




"============================"
"   vim-indentLine
"============================"
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'



"---vim-Tabularize setting {{{
nmap <leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a" :Tabularize /:\zs<CR>
vmap <Leader>a" :Tabularize /:\zs<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
" }}}




"============================"
"       vim-gundo
"============================"
"h gundo
map <C-G> :GundoToggle<CR>

let g:pydoc_cmd = 'python -m pydoc'

"============================"
"       vim-ag
"============================"
let g:agprg="<custom-ag-path-goes-here> --column"

"============================"
"       vim-syntastic
"============================"
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1


let g:airline_theme="serene"
let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_exclude_preview=1

" ---------------
" vimshell
" ---------------
let g:vimshell_temporary_directory = expand('~/.vim/cache/vimshell')
let g:vimshell_force_overwrite_statusline = 0


let g:gitgutter_enabled = 0
map <leader>gg :GitGutterToggle<CR>



"}}}