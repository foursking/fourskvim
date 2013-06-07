" googletranslate.vim: 利用Google翻译在vim中进行翻译
" Author:       jiazhoulvke
" Blog:         http://jiazhoulvke.com
" Date:         2012-4-10
" Version:      1.0
"-------------------------------------------------
" Google_Translate: 谷歌翻译{{{1
function! Google_Translate(lan1,lan2,word)
python << EOM
#coding=utf-8
import vim,urllib,urllib2
word = vim.eval("a:word")
word=word.replace('\n','')
rword = urllib.urlencode({'text':word})
lan1 = vim.eval("a:lan1")
lan2 = vim.eval("a:lan2")
headers = {
    'User-Agent':'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.15 Safari/536.5'
}
url = 'http://translate.google.com/translate_a/t?client=firefox-a&langpair='+lan1+'%7c'+lan2+'&ie=UTF-8&oe=UTF-8&'+rword
req = urllib2.Request(
    url = url,
    headers = headers
)
resultstr=''
gtresult = urllib2.urlopen(req)
if gtresult.getcode()==200:
    gtresultstr=gtresult.read()
    po=eval(gtresultstr)
    resultstr=''
    for poi in po['sentences']:
        resultstr+=poi['trans']
    if po.has_key('dict'):
        if len(po['dict'])>0:
            if po['dict'][0].has_key('terms'):
                tr=','.join(po['dict'][0]['terms'])
                resultstr+='\n'+word+':'+tr
vim.command('let resultstr = "%s"' % resultstr)
EOM
return resultstr
endfunction

"-------------------------------------------------
" Google_Translate_Selected_String: 翻译选中文本{{{1
function! Google_Translate_Selected_String(lan1,lan2)
    normal `<
    normal v
    normal `>
    silent normal "ty
    return Google_Translate(a:lan1,a:lan2,@t)
endfunction

"-------------------------------------------------
" Key_and_command_bind: 按键及命令绑定{{{1
if !hasmapto('<leader>e2c','n')
    nmap <silent> <leader>e2c :echo Google_Translate('en','zh-CN',expand('<cword>'))<CR>
endif
if !hasmapto('<leader>c2e','n')
    nmap <silent> <leader>c2e :echo Google_Translate('zh-CN','en',expand('<cword>'))<CR>
endif
if !hasmapto('<leader>e2c','v')
    vmap <silent> <leader>e2c <ESC>:echo Google_Translate_Selected_String('en','zh-CN')<CR>
endif
if !hasmapto('<leader>c2e','v')
    vmap <silent> <leader>c2e <ESC>:echo Google_Translate_Selected_String('zh-CN','en')<CR>
endif
if !exists(":E2C")
    command! -nargs=+ E2C :echo Google_Translate("en","zh-CN",<q-args>)
endif
if !exists(":C2E")
    command! -nargs=+ C2E :echo Google_Translate("zh-CN","en",<q-args>)
endif
"-------------------------------------------------
" Modelines: {{{1
" vim: ts=4 nowrap fdm=marker foldcolumn=1 ft=vim
