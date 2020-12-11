# .vimrc
- .vimrc は Vim の設定ファイル
- ホームディレクトリに `.vimrc` を作成すると自動で作成した設定が参照される
- 初期設定は、[何も考えず~/.vimrcにこれを書くんだ！ 〜vim初心者によるvim初心者のためのvim入門〜](https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301)を参照

## vim-plug
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

## vimdic-ja
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

# 参考
- https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301
- https://qiita.com/kouichi_c/items/e19ccf94b8e5ab6ed18e
- https://vimawesome.com/plugin/iceberg

