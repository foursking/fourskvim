let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'leshill/vim-json'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/fencview'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'ianva/vim-youdao-translater'
Bundle 'scrooloose/syntastic'
Bundle 'dimasg/vim-mark'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-repeat'
Bundle 'klen/python-mode'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'vim-scripts/LargeFile'
Bundle 'leshill/vim-json'
Bundle 'pangloss/vim-javascript'
Bundle 'lijoantony/log'
Bundle 'fishy/projtags-vim'
Bundle 'toupeira/vim-desertink'

Bundle 'edkolev/promptline.vim'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'foursking/vim-doc-cn'
Bundle 'foursking/vim-escalt'
Bundle 'foursking/PIV'
Bundle 'foursking/vim-colorscheme'

Bundle 'vim-scripts/vcscommand.vim'
Bundle 'thinca/vim-quickrun'
Bundle 'jacekd/vim-iawriter'
Bundle 'tpope/vim-commentary'
Bundle 'h2ero/phpcr'
Bundle 'zweifisch/pipe2eval'
Bundle 'sjl/gundo.vim'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'foursking/fourskvim-colorscheme'
Bundle 'c9s/colorselector.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'junegunn/goyo.vim'
Bundle 'evanmiller/nginx-vim-syntax'


Bundle 'edkolev/tmuxline.vim'

"Bundle 'sjas/csExplorer'
"Bundle 'honza/vim-snippets'
"Bundle 'sjas/csExplorer'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'terryma/vim-expand-region'
"Bundle 'thinca/vim-quickrun'
"Bundle 'vim-scripts/DrawIt'
"Bundle 'mrtazz/DoxygenToolkit.vim'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'ap/vim-css-color'
"Bundle 'tomtom/startup_profile_vim'
"Bundle 'vim-scripts/log.vim'
"Bundle 'ugo5/AuthorInfo'
"Bundle 'tobyS/vimtip'
"Bundle 'Townk/vim-autoclose'
"Bundle 'vim-scripts/YankRing.vim'
"Bundle 'mileszs/ack.vim'
"Bundle 'mattn/zencoding-vim'
"Bundle 'michalliu/jsruntime.vim'
"Bundle 'Shougo/vimproc.vim'
"Bundle 'Shougo/vimshell.vim'
"Bundle 'vim-scripts/LustyExplorer'
"Bundle 'vim-scripts/matchit.zip'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-easytags'
"Bundle 'vim-scripts/phpfolding.vim'
