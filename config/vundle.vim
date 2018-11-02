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
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/flappyvird-vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'vim-php/tagbar-phpctags.vim'
Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'SirVer/ultisnips'
Bundle 'leshill/vim-json'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/fencview'
Bundle 'junegunn/vim-easy-align'
Bundle 'davidhalter/jedi-vim'
Bundle 'chriskempson/base16-vim'
Bundle 'morhetz/gruvbox'

"Bundle 'zhenkunou/vim-tabline'

Bundle 'WinterXMQ/escalt.vim'

Bundle 'drmikehenry/vim-fixkey'
"Bundle 'stephpy/vim-php-cs-fixer'

Bundle 'vim-scripts/phpfolding.vim'
Bundle 'hdima/python-syntax'


"Bundle 'eshion/vim-sftp-sync'

Bundle 'crusoexia/vim-monokai'
Bundle 'crusoexia/vim-dracula'
Bundle 'crusoexia/vim-dream'
Bundle 'vim-scripts/bash-support.vim'
"Bundle 'tpope/vim-markdown'

"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
"Bundle 'klen/python-mode'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'fishy/projtags-vim'
Bundle 'rizzatti/dash.vim'

Bundle 'Chiel92/vim-autoformat'

Bundle 'edkolev/promptline.vim'
Bundle 'foursking/PIV'
Bundle 'foursking/vim-colorscheme'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'blerins/flattown'
Bundle 'tpope/vim-commentary'
Bundle 'thinca/vim-quickrun'
Bundle 'vim-scripts/matchit.zip'
Bundle 'junegunn/goyo.vim'
Bundle 'vim-scripts/DrawIt'
Bundle 'JazzCore/neocomplcache-ultisnips'

Bundle 'phpvim/phpcd.vim'

Bundle 'NLKNguyen/papercolor-theme'


Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'

Bundle 'Shougo/vimproc.vim'

"Bundle 'm2mdas/phpcomplete-extended'
"Bundle 'Yggdroot/indentLine'
"Bundle 'vim-scripts/phpfolding.vim'
"Bundle 'vingel/vim'

"Bundle 'StanAngeloff/php.vim'


"Bundle 'dyng/ctrlsf.vim'

"Bundle 'vim-scripts/vcscommand.vim'
"Bundle 'jacekd/vim-iawriter'
"Bundle 'h2ero/phpcr'
"Bundle 'zweifisch/pipe2eval'
Bundle 'sjl/gundo.vim'
"Bundle 'uguu-org/vim-matrix-screensaver'
"Bundle 'michaeljsmith/vim-indent-object'
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
"Bundle 'michalliu/sourcebeautify.vim'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'tpope/vim-repeat'
"Bundle 'vexxor/phpdoc.vim'
"Bundle 'foursking/vim-php-manual'
"Bundle 'mileszs/ack.vim'
"Bundle 'vim-scripts/TxtBrowser'
"Bundle 'kien/rainbow_parentheses.vim'

"Bundle 'altercation/vim-colors-solarized'
"Bundle 'Keithbsmiley/swift.vim'
"Bundle 'msanders/cocoa.vim'
"Bundle 'brookhong/k.vim'
"Bundle 'garbas/vim-snipmate'
