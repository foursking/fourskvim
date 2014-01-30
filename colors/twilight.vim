<<<<<<< HEAD
" Vim color file
"
" Converted from Textmate theme Twilight using Coloration v0.2.4
"   http://github.com/sickill/coloration
" 256-color Terminal support added with Vim-toCterm
"   http://shawncplus.github.com/Vim-toCterm
"
" Slightly adjusted thereafter:
"   NonText background matches Normal
"   TabLine* match StatusLine*

set background=dark
highlight clear



if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Twilight"

hi Cursor  guifg=NONE guibg=#a7a7a7 ctermbg=248 gui=NONE cterm=NONE
hi Visual  guifg=NONE guibg=#3c4043 ctermbg=238 gui=NONE cterm=NONE
hi CursorLine  guifg=NONE guibg=#1b1b1b ctermbg=234 gui=NONE cterm=NONE
hi CursorColumn  guifg=NONE guibg=#1b1b1b ctermbg=234 gui=NONE cterm=NONE
hi LineNr  guifg=#868686 ctermfg=102 guibg=#141414 ctermbg=233 gui=NONE cterm=NONE
hi VertSplit  guifg=#3f3f3f ctermfg=237 guibg=#3f3f3f ctermbg=237 gui=NONE cterm=NONE
hi MatchParen  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi StatusLine  guifg=#f8f8f8 ctermfg=15 guibg=#3f3f3f ctermbg=237 gui=bold
hi StatusLineNC  guifg=#f8f8f8 ctermfg=15 guibg=#3f3f3f ctermbg=237 gui=NONE cterm=NONE
hi TabLine  guifg=#f8f8f8 ctermfg=15 guibg=#3f3f3f ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill  guifg=#f8f8f8 ctermfg=15 guibg=#3f3f3f ctermbg=237 gui=NONE cterm=NONE
hi TabLineSel  guifg=#f8f8f8 ctermfg=15 guibg=#3f3f3f ctermbg=237 gui=bold
hi Pmenu  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi PmenuSel  guifg=NONE guibg=#3c4043 ctermbg=238 gui=NONE cterm=NONE
hi IncSearch  guifg=NONE guibg=#343a44 ctermbg=237 gui=NONE cterm=NONE
hi Search  guifg=NONE guibg=#343a44 ctermbg=237 gui=NONE cterm=NONE
hi Directory  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Folded  guifg=#5f5a60 ctermfg=59 guibg=#141414 ctermbg=233 gui=NONE cterm=NONE

hi Normal  guifg=#f8f8f8 ctermfg=15 guibg=#141414 ctermbg=233 gui=NONE cterm=NONE
hi Boolean  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Character  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Comment  guifg=#5f5a60 ctermfg=59 guibg=NONE gui=italic
hi Conditional  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi Constant  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Define  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Float  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Function  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi Identifier  guifg=#f9ee98 ctermfg=228 guibg=NONE gui=NONE cterm=NONE
hi Keyword  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi Label  guifg=#8f9d6a ctermfg=107 guibg=NONE gui=NONE cterm=NONE
hi NonText  guifg=#4f4f4f ctermfg=239 guibg=#141414 ctermbg=233 gui=NONE cterm=NONE
hi Number  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi Operator  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi PreProc  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi Special  guifg=#f8f8f8 ctermfg=15 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey  guifg=#4f4f4f ctermfg=239 guibg=#1b1b1b ctermbg=234 gui=NONE cterm=NONE
hi Statement  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi StorageClass  guifg=#f9ee98 ctermfg=228 guibg=NONE gui=NONE cterm=NONE
hi String  guifg=#8f9d6a ctermfg=107 guibg=NONE gui=NONE cterm=NONE
hi Tag  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi Title  guifg=#f8f8f8 ctermfg=15 guibg=NONE gui=bold
hi Todo  guifg=#5f5a60 ctermfg=59 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyFunction  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi rubySymbol  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi rubyConstant  guifg=#9b859d ctermfg=246 guibg=NONE gui=NONE cterm=NONE
hi rubyStringDelimiter  guifg=#8f9d6a ctermfg=107 guibg=NONE gui=NONE cterm=NONE
hi rubyBlockParameter  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi rubyInstanceVariable  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi rubyInclude  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyGlobalVariable  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi rubyRegexp  guifg=#e9c062 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyRegexpDelimiter  guifg=#e9c062 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyEscape  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi rubyControl  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyClassVariable  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi rubyOperator  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyException  guifg=#cda869 ctermfg=179 guibg=NONE gui=NONE cterm=NONE
hi rubyPseudoVariable  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi rubyRailsUserClass  guifg=#9b859d ctermfg=246 guibg=NONE gui=NONE cterm=NONE
hi rubyRailsARAssociationMethod  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi rubyRailsARMethod  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi rubyRailsRenderMethod  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi rubyRailsMethod  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi erubyComment  guifg=#5f5a60 ctermfg=59 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi htmlTag  guifg=#ac885b ctermfg=137 guibg=NONE gui=NONE cterm=NONE
hi htmlEndTag  guifg=#ac885b ctermfg=137 guibg=NONE gui=NONE cterm=NONE
hi htmlTagName  guifg=#ac885b ctermfg=137 guibg=NONE gui=NONE cterm=NONE
hi htmlArg  guifg=#ac885b ctermfg=137 guibg=NONE gui=NONE cterm=NONE
hi htmlSpecialChar  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi javaScriptFunction  guifg=#f9ee98 ctermfg=228 guibg=NONE gui=NONE cterm=NONE
hi javaScriptRailsFunction  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi yamlKey  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi yamlAnchor  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi yamlAlias  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi yamlDocumentHeader  guifg=#8f9d6a ctermfg=107 guibg=NONE gui=NONE cterm=NONE
hi cssURL  guifg=#7587a6 ctermfg=103 guibg=NONE gui=NONE cterm=NONE
hi cssFunctionName  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE cterm=NONE
hi cssColor  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi cssPseudoClassId  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi cssClassName  guifg=#9b703f ctermfg=95 guibg=NONE gui=NONE cterm=NONE
hi cssValueLength  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi cssCommonAttr  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE cterm=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE cterm=NONE
=======
let colors_name = "twilight"

let s:grey_blue = '#8a9597'
let s:light_grey_blue = '#a0a8b0'
let s:dark_grey_blue = '#34383c'
let s:mid_grey_blue = '#64686c'
let s:beige = '#ceb67f'
let s:light_orange = '#ebc471'
let s:yellow = '#e3d796'
let s:violet = '#a999ac'
let s:green = '#a2a96f'
let s:lightgreen = '#c2c98f'
let s:red = '#d08356'
let s:cyan = '#74dad9'
let s:darkgrey = '#1a1a1a'
let s:grey = '#303030'
let s:lightgrey = '#605958'
let s:white = '#fffedc'

if version >= 700
  hi CursorLine guibg=#262626
  hi CursorColumn guibg=#262626
  hi MatchParen guifg=white guibg=#80a090 gui=bold

  "Tabpages
  hi TabLine guifg=#a09998 guibg=#202020 gui=underline
  hi TabLineFill guifg=#a09998 guibg=#202020 gui=underline
  hi TabLineSel guifg=#a09998 guibg=#404850 gui=underline

  "P-Menu (auto-completion)
  hi Pmenu guifg=#605958 guibg=#303030 gui=underline
  hi PmenuSel guifg=#a09998 guibg=#404040 gui=underline
  "PmenuSbar
  "PmenuThumb
endif

hi Visual guibg=#404040

"hi Cursor guifg=NONE guibg=#586068
hi Cursor guibg=#b0d0f0


exe 'hi Normal         guifg='.s:white             .' guibg='.s:darkgrey
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi NonText        guifg='.s:lightgrey         .' guibg='.s:grey
exe 'hi SpecialKey     guifg='.s:grey              .' guibg='.s:darkgrey

exe 'hi LineNr         guifg='.s:mid_grey_blue     .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi StatusLine     guifg='.s:white             .' guibg='.s:grey            .' gui=italic,underline'
exe 'hi StatusLineNC   guifg='.s:lightgrey         .' guibg='.s:grey            .' gui=italic,underline'
exe 'hi VertSplit      guifg='.s:grey              .' guibg='.s:grey            .' gui=none'

exe 'hi Folded         guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi FoldColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi SignColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'

exe 'hi Comment        guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi TODO           guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=italic,bold'

exe 'hi Title          guifg='.s:red               .' guibg='.s:darkgrey        .' gui=underline'

exe 'hi Constant       guifg='.s:red               .' guibg='.s:darkgrey        .' gui=none'
exe 'hi String         guifg='.s:green             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Special        guifg='.s:lightgreen        .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Identifier     guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Statement      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Conditional    guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Repeat         guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Structure      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Function       guifg='.s:violet            .' guibg='.s:darkgrey        .' gui=none'

exe 'hi PreProc        guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:darkgrey        .' gui=italic'

"hi Identifier guifg=#7587a6
" Type d: 'class'
"hi Structure guifg=#9B859D gui=underline
"hi Function guifg=#dad085
" dylan: method, library, ... d: if, return, ...
"hi Statement guifg=#7187a1 gui=NONE
" Keywords  d: import, module...
"hi PreProc guifg=#8fbfdc
"gui=underline
"hi Operator guifg=#a07020
"hi Repeat guifg=#906040 gui=underline
"hi Type guifg=#708090

"hi Type guifg=#f9ee98 gui=NONE

"hi NonText guifg=#808080 guibg=#303030

"hi Macro guifg=#a0b0c0 gui=underline

"Tabs, trailing spaces, etc (lcs)
"hi SpecialKey guifg=#808080 guibg=#343434

"hi TooLong guibg=#ff0000 guifg=#f8f8f8

hi Search guifg=#606000 guibg=#c0c000 gui=bold

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

>>>>>>> f87ff3f4c2396c7b52ce86d4fe5f8e132e90928d
