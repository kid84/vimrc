syntax on
set number
set ruler

set autoindent   " 自動でインデント
set smartindent   " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set nocompatible   " vi非互換モード                                                                                                                                                                                             
set number   " 行番号表示
set ambiwidth=double   " 全角文字（2バイト文字）の扱い
set showmode   " 現在のモードを表示
set title   " 編集中のファイル名を表示
set ruler   " カーソルが何行目の何列目に置かれているかを表示する
set showmatch   " 括弧の対応をハイライト
set showcmd   " コマンドをステータス行に表示
set laststatus=2   " 常にステータスラインを表示
set expandtab   " Tabキーを空白に変換
set ts=2 sw=2 sts=0   " タブは半角2文字分のスペース
set noswapfile   " スワップファイルを作らない
set vb t_vb=   " ビープを鳴らさない
set whichwrap=b,s,h,l,<,>,[,]   " カーソルを行頭、行末で止まらないようにする
set clipboard=unnamed   "ヤンクした文字は、システムのクリップボードに入れる
set list   " 不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:<   " 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示
set cursorline "カーソル行をハイライト

set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト



augroup InsertHook
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
  autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup ENDutocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
set nocompatible               " be iMproved
filetype off
"call pathogen#runtime_append_all_bundles()

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
"  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'drillbits/nyan-modoki.vim'
NeoBundle 'Townk/vim-autoclose'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
call neobundle#end()

"Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!
filetype indent on


set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 2
let g:nayn_modoki_animation_enabled= 1

let g:user_emmet_expandabbr_key = '<C-e>'
au BufRead,BufNewFile *.pjs setfiletype javascript
