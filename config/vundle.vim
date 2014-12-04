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
Bundle 'mattn/flappyvird-vim'
Bundle 'maksimr/vim-jsbeautify'


Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'leshill/vim-json'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/fencview'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'klen/python-mode'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'pangloss/vim-javascript'
Bundle 'fishy/projtags-vim'

Bundle 'edkolev/promptline.vim'
Bundle 'foursking/vim-escalt'

Bundle 'foursking/PIV'
Bundle 'foursking/vim-colorscheme'

Bundle 'blerins/flattown'
Bundle 'tpope/vim-commentary'
Bundle 'thinca/vim-quickrun'
Bundle 'c9s/colorselector.vim'
Bundle 'vim-scripts/matchit.zip'
"Bundle 'vim-scripts/vcscommand.vim'
"Bundle 'jacekd/vim-iawriter'
"Bundle 'h2ero/phpcr'
"Bundle 'zweifisch/pipe2eval'
"Bundle 'sjl/gundo.vim'
"Bundle 'uguu-org/vim-matrix-screensaver'
"Bundle 'michaeljsmith/vim-indent-object'
Bundle 'junegunn/goyo.vim'
"Bundle 'evanmiller/nginx-vim-syntax'

"Bundle 'chriskempson/vim-tomorrow-theme'
"Bundle 'edkolev/tmuxline.vim'

"Bundle 'bronson/vim-trailing-whitespace'
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
"Bundle 'mattn/zencoding-vim'
"Bundle 'michalliu/jsruntime.vim'
"Bundle 'Shougo/vimproc.vim'
"Bundle 'Shougo/vimshell.vim'
"Bundle 'vim-scripts/LustyExplorer'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-easytags'
"Bundle 'vim-scripts/phpfolding.vim'
"Bundle 'rizzatti/dash.vim'

"Bundle 'ouimasg/vim-mark'
"Bundle 'Yggdroot/indentLine'
"Bundle 'michalliu/sourcebeautify.vim'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'tpope/vim-repeat'
"Bundle 'vexxor/phpdoc.vim'
"Bundle 'foursking/vim-php-manual'
"Bundle 'mileszs/ack.vim'
"Bundle 'vim-scripts/TxtBrowser'
"Bundle 'dyng/ctrlsf.vim'
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'Valloric/YouCompleteMe'

"Bundle 'altercation/vim-colors-solarized'
"Bundle 'Keithbsmiley/swift.vim'
"Bundle 'msanders/cocoa.vim'
"Bundle 'brookhong/k.vim'
