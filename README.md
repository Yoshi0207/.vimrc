# Vim の個人設定
Vim の個人設定の覚書

# .vimrc
- .vimrc は Vim の設定ファイル
- ホームディレクトリに `.vimrc` を作成すると自動で作成した設定が参照される
- 初期設定は、[何も考えず~/.vimrcにこれを書くんだ！ 〜vim初心者によるvim初心者のためのvim入門〜](https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301)を参照

# vim-plug
- vim-plug は vim のプラグインを管理するためのもの
- ダウンロードは[vim-plug導入](https://qiita.com/kouichi_c/items/e19ccf94b8e5ab6ed18e)に従う

```terminal:terminal
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- 導入したいプラグインを `.vimrc` に次のように記述

```:.vimrc
call plug#begin()
Plug '導入したいプラグイン'
call plug#end()
```
- vim で `:PlugInstall` を実行しインストールする

# vimdic-ja
vim のヘルプページ `:help` を日本語化する

```:.vimrc
Plug 'vim-jp/vimdoc-ja' 
```

## iceberg
- vim-plug でダウンロードする
- `Plug 'cocopon/iceberg.vim'`でダウンロード
- ホームディレクトリの`.vim`ディレクトリ内に`color`ディレクトリが無い場合作成
- `.vim`内の`plugged`ディレクトリ内の`iceberg.vim`ディレクトリ内の`color`ディレクトリにある`iceberg.vim`ファイルを`.vim`直下の`color`ディレクトリにコピー
- `.vimrc`に次を記述

```:.vimrc
colorscheme iceberg
```

## vim-lexiv
閉じカッコや引用符の対を自動入力する

```:.vimrc
Plug 'mattn/vim-lexiv'
```

## fern
ディレクトリツリーを表示できるようになる

```:.vimrc
Plug 'lambdalisue/fern.vim'
```
### How to use
- `:Fern . -drawer` でディレクトリツリーを表示
- `:Fern . -drawer -reveal=%` でディレクトリツリーを表示(すべての)
- `:Fern -drawer %:h` で現在表示している親のディレクトリツリーを表示
- `:Fern . -drawer -toggle` でディレクトリツリーを閉じる

# myvimrc
```vim:~/.vimarc
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
" Fern でカレントディレクトリのディレクトリツリーを表示
" Ctrl+e
nnoremap <C-t> :Fern . -drawer -reveal=%<CR>
" Fern のディレクトリツリーを非表示に
" Ctrl+r
nnoremap <C-r> :Fern . -drawer -toggle<CR>

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
call plug#end()
```

# 参考
- https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301
- https://qiita.com/kouichi_c/items/e19ccf94b8e5ab6ed18e
- https://vimawesome.com/plugin/iceberg

