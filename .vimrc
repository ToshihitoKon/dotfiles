set autoindent
set expandtab
set shiftround
set tabstop=4
set shiftwidth=4
set number
set background=dark
set modeline

highlight ColorColumn ctermbg=gray
set colorcolumn=80

set fileformats=unix,dos,mac
syntax on

let g:localvimrc_ask=0        " いちいち聞かずに勝手に読み込む
let g:localvimrc_persistent=2 " 一度聞いたファイルを記録しておき、次回からは自動で読み込む
let g:localvimrc_persistent=1 " 聞いたときに大文字のY/N/Aで答えた場合のみ上記の動作をする
