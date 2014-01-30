hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "darklord256"

highlight Normal guifg=grey85 guibg=grey15 ctermfg=16 ctermbg=16
highlight NonText guifg=yellow3 guibg=grey15 ctermfg=16 ctermbg=16
highlight Cursor guifg=black guibg=green2 ctermfg=16 ctermbg=16

highlight Statement guifg=#d2b48c gui=NONE ctermfg=18 cterm=NONE
highlight Constant guifg=#c07070 ctermfg=18
highlight String guifg=#ffa0a0 ctermfg=18
highlight Character guifg=#ffa0a0 ctermfg=18
highlight Comment guifg=#80d0ff ctermfg=18
highlight PreProc guifg=#e0b0b0 ctermfg=18
highlight Special guifg=#dddd40 ctermfg=18
highlight Identifier guifg=#70ff70 ctermfg=18
highlight Type guifg=#f0a0c0 gui=NONE ctermfg=18 cterm=NONE

hi link Function Identifier
hi link SpecialKey Comment
hi link Directory  Comment

highlight Folded guifg=grey90 guibg=grey45 ctermfg=16 ctermbg=16
highlight Visual guifg=#556b2f guibg=fg gui=reverse ctermfg=18 cterm=reverse
highlight Search guifg=black guibg=lightskyblue3 gui=NONE ctermfg=16 ctermbg=16 cterm=NONE
highlight IncSearch guifg=yellow guibg=blue gui=bold ctermfg=18 ctermbg=18 cterm=bold
highlight WarningMsg guifg=red guibg=ghostwhite gui=bold ctermfg=18 ctermbg=18 cterm=bold
highlight Error guibg=red3 ctermbg=16
