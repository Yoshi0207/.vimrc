" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
"set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" シンタックスハイライトにicebergを使用
set background=dark
colorscheme iceberg

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ショートカット
" ターミナルを起動
nnoremap <C-t> :bo terminal<CR>
" Fern でカレントディレクトリのディレクトリツリーを表示
" Tab で表示・非表示を切り替えることが可能
nnoremap <C-u> :Fern . -drawer -reveal=%<CR>
" Fern のディレクトリツリーを非表示に
nnoremap <C-i> :Fern . -drawer -toggle<CR>

" スニペット
" ()の自動補完(lexivによって必要ない)
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap [<Enter> []<Left><CR><ESC><S-o>
"inoremap (<Enter> ()<Left><CR><ESC><S-o>
" 変数の補完
set completeopt=menuone,noinsert
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

" plugins
call plug#begin()
" vim のヘルプを日本語表示にするプラグイン
Plug 'vim-jp/vimdoc-ja'
" vim のデザインを変更するプラグイン
Plug 'cocopon/iceberg.vim'
" 閉じカッコ補完を行うプラグイン
Plug 'mattn/vim-lexiv'
" プロジェクトのディレクトリをツリー表示するプラグイン
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
" Language Server Client
Plug 'prabirshrestha/vim-lsp'
" LspInstallServerコマンドでLSの設定を自動で行うプラグイン
Plug 'mattn/vim-lsp-settings'
" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
