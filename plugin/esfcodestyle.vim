command! MyCodeStyleOn %s/^\(\s*\)\([_a-zA-Z].*\)\n\s*{$/\1\2{/ge
command! MyCodeStyleOff %s/^\(\s*\)\([_a-zA-Z].*\){$/\1\2\r\1{/ge

noremap <c-F5> :MyCodeStyleOn<cr>
noremap <c-F6> :MyCodeStyleOff<cr>
