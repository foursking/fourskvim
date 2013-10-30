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
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'sjas/csExplorer'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/fencview'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'ianva/vim-youdao-translater'
Bundle 'mrtazz/DoxygenToolkit.vim'
Bundle 'scrooloose/syntastic'
Bundle 'dimasg/vim-mark'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Yggdroot/indentLine'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-repeat'
Bundle 'klen/python-mode'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'markwu/LargeFile'
Bundle 'leshill/vim-json'
Bundle 'pangloss/vim-javascript'
Bundle 'lijoantony/log'

"Bundle 'bling/vim-airline'
"Bundle 'ap/vim-css-color'
"Bundle 'tomtom/startup_profile_vim'
"Bundle 'vim-scripts/log.vim'
"Bundle 'ugo5/AuthorInfo'
"Bundle 'sjl/gundo.vim'
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
