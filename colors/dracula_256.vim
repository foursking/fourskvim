" Dracula Theme v0.7.0
"
" https://github.com/zenorocha/dracula-theme
"
" Copyright 2013, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Dracula"

highlight Cursor guifg=#282a36 guibg=#f8f8f0 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Visual guifg=NONE guibg=#44475a gui=NONE ctermbg=18 cterm=NONE
highlight CursorLine guifg=NONE guibg=#3d3f49 gui=NONE ctermbg=18 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#3d3f49 gui=NONE ctermbg=18 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#3d3f49 gui=NONE ctermbg=18 cterm=NONE
highlight LineNr guifg=#909194 guibg=#3d3f49 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight VertSplit guifg=#64666d guibg=#64666d gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight MatchParen guifg=#ff79c6 guibg=NONE gui=underline ctermfg=18 cterm=underline
highlight StatusLine guifg=#f8f8f2 guibg=#64666d gui=bold ctermfg=18 ctermbg=18 cterm=bold
highlight StatusLineNC guifg=#f8f8f2 guibg=#64666d gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Pmenu guifg=NONE guibg=NONE gui=NONE cterm=NONE
highlight PmenuSel guifg=NONE guibg=#44475a gui=NONE ctermbg=18 cterm=NONE
highlight IncSearch guifg=#282a36 guibg=#f1fa8c gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Search guifg=NONE guibg=NONE gui=underline cterm=underline
highlight Directory guifg=#bd93f9 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Folded guifg=#6272a4 guibg=#282a36 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE

highlight Normal guifg=#f8f8f2 guibg=#282a36 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Boolean guifg=#bd93f9 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Character guifg=#bd93f9 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Comment guifg=#6272a4 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Conditional guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Constant guifg=NONE guibg=NONE gui=NONE cterm=NONE
highlight Define guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight DiffAdd guifg=#f8f8f2 guibg=#468410 gui=bold ctermfg=18 ctermbg=18 cterm=bold
highlight DiffDelete guifg=#8b080b guibg=NONE gui=NONE ctermfg=124 cterm=NONE
highlight DiffChange guifg=#f8f8f2 guibg=#243a5f gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight DiffText guifg=#f8f8f2 guibg=#204a87 gui=bold ctermfg=18 ctermbg=18 cterm=bold
highlight ErrorMsg guifg=#f8f8f0 guibg=#ff79c6 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight WarningMsg guifg=#f8f8f0 guibg=#ff79c6 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Float guifg=#bd93f9 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Function guifg=#50fa7b guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Identifier guifg=#8be9fd guibg=NONE gui=italic ctermfg=18 cterm=NONE
highlight Keyword guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Label guifg=#f1fa8c guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight NonText guifg=#3b3a32 guibg=#32343f gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Number guifg=#bd93f9 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Operator guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight PreProc guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Special guifg=#f8f8f2 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight SpecialKey guifg=#3b3a32 guibg=#3d3f49 gui=NONE ctermfg=18 ctermbg=18 cterm=NONE
highlight Statement guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight StorageClass guifg=#8be9fd guibg=NONE gui=italic ctermfg=18 cterm=NONE
highlight String guifg=#f1fa8c guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Tag guifg=#ff79c6 guibg=NONE gui=NONE ctermfg=18 cterm=NONE
highlight Title guifg=#f8f8f2 guibg=NONE gui=bold ctermfg=18 cterm=bold
highlight Todo guifg=#6272a4 guibg=NONE gui=inverse,bold ctermfg=18 cterm=inverse,bold
highlight Type guifg=NONE guibg=NONE gui=NONE cterm=NONE
highlight Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
