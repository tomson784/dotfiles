# dotfiles

My dotfiles config

## インストール

```bash
git clone https://github.com/tomson784/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

`install.sh` は以下を行います:
- `~/.vimrc` → `~/dotfiles/.vimrc` のシンボリックリンク作成
- `~/.tmux.conf` → `~/dotfiles/.tmux.conf` のシンボリックリンク作成
- `~/.bashrc` へ tmux 起動エイリアス・プロンプト設定を追記

---

## vimの使い方

### モードの概念

vim には複数のモードがあり、モードによってキーの意味が変わります。

| モード | 説明 | 画面左下の表示 |
|--|--|--|
| **ノーマルモード** | 起動直後のデフォルト。カーソル移動・コピー・削除などを行う | （何も表示されない） |
| **インサートモード** | 文字を入力・編集できる | `-- INSERT --` |
| **ビジュアルモード** | テキストを範囲選択する | `-- VISUAL --` |
| **コマンドモード** | `:` から始まるコマンドを入力する | `:` |

### モード切り替え

| 説明 | コマンド |
|--|--|
| ノーマル → インサート（カーソル位置に入力） | `i` |
| ノーマル → インサート（カーソルの次に入力） | `a` |
| ノーマル → インサート（行末に入力） | `A` |
| ノーマル → インサート（新しい行を下に追加） | `o` |
| ノーマル → インサート（新しい行を上に追加） | `O` |
| インサート → ノーマル | `Esc` |
| ノーマル → ビジュアル | `v` |
| ノーマル → コマンド | `:` |

### カーソル移動（ノーマルモード）

| 説明 | コマンド |
|--|--|
| 左・下・上・右 | `h` / `j` / `k` / `l`（または矢印キー） |
| 行頭へ | `0` |
| 行末へ | `$` |
| ファイル先頭へ | `gg` |
| ファイル末尾へ | `G` |
| 指定行へジャンプ | `<num>G`（例: `10G` で10行目） |
| 単語の先頭へ（前進） | `w` |
| 単語の先頭へ（後退） | `b` |

### 編集操作（ノーマルモード）

| 説明 | コマンド |
|--|--|
| 行を削除（切り取り） | `<num>dd`（例: `3dd` で3行削除） |
| 行をコピー | `<num>yy`（例: `2yy` で2行コピー） |
| 貼り付け（カーソルの下/後） | `p` |
| 貼り付け（カーソルの上/前） | `P` |
| 1文字削除 | `x` |
| アンドゥ（直前の操作を取り消す） | `u` |
| リドゥ（取り消した操作をやり直す） | `Ctrl + r` |

### 検索・置換

| 説明 | コマンド |
|--|--|
| 前方検索 | `/検索文字列` → `Enter` |
| 次の一致へ | `n` |
| 前の一致へ | `N` |
| 検索ハイライト解除 | `:nohl` |
| 置換（現在行） | `:s/置換前/置換後/g` |
| 置換（ファイル全体） | `:%s/置換前/置換後/g` |

### 保存・終了

| 説明 | コマンド |
|--|--|
| 保存 | `:w` |
| 終了 | `:q` |
| 保存して終了 | `:wq` |
| 保存せず強制終了 | `:q!` |
| ディレクトリツリー表示・非表示 | `Ctrl + n` |

### ウィンドウ・ファイル操作

vim 起動時に NERDTree が自動で開きます。ウィンドウ間の移動やファイルの切り替えは以下の操作で行います。

**ウィンドウ移動（NERDTree ↔ エディタ）**

| 説明 | コマンド |
|--|--|
| 次のウィンドウへ移動 | `Ctrl + w` → `w` |
| 左のウィンドウへ移動 | `Ctrl + w` → `h` |
| 右のウィンドウへ移動 | `Ctrl + w` → `l` |

**NERDTree でのファイル操作**（NERDTree にフォーカスがある状態で）

| 説明 | コマンド |
|--|--|
| ファイルを開く | `Enter` |
| 縦分割で開く | `s` |
| 横分割で開く | `i` |
| 新しいタブで開く | `t` |
| ディレクトリを展開・折りたたむ | `Enter` または `o` |

**タブ・バッファ操作**

| 説明 | コマンド |
|--|--|
| 次のタブへ | `gt` |
| 前のタブへ | `gT` |
| 開いているバッファ一覧 | `:ls` |
| 次のバッファへ | `:bn` |
| 前のバッファへ | `:bp` |

### which-key（ショートカット一覧ポップアップ）

ノーマルモードで `Space` を押すと、画面下に押せるキーと説明が一覧表示されます。

| キー | 動作 |
|--|--|
| `Space` | which-key 起動 |
| `Space` → `n` | ファイルツリー 表示/非表示 |
| `Space` → `s` | 保存 |
| `Space` → `q` | 終了 |
| `Space` → `Q` | 強制終了 |
| `Space` → `x` | 保存して終了 |
| `Space` → `h` | 検索ハイライト解除 |
| `Space` → `w` | ウィンドウ操作サブメニュー（`w`/`h`/`l`/`s`/`v`） |

### プラグイン

[dein.vim](https://github.com/Shougo/dein.vim) で管理しています。初回起動時に自動インストールされます。

| プラグイン | 説明 |
|--|--|
| [NERDTree](https://github.com/scrooloose/nerdtree) | ファイルツリー表示 (`Ctrl+n`) |
| [vim-which-key](https://github.com/liuchengxu/vim-which-key) | ショートカット一覧ポップアップ (`Space`) |
| [syntastic](https://github.com/scrooloose/syntastic) | 構文チェック |
| [vim-autoclose](https://github.com/Townk/vim-autoclose) | 括弧・クォートの自動補完 |
| [lightline.vim](https://github.com/itchyny/lightline.vim) | ステータスバー |
| [indentLine](https://github.com/Yggdroot/indentLine) | インデントの可視化 |
| [vim-clang](https://github.com/justmao945/vim-clang) | C/C++ の補完 (C11 / C++17) |
| [molokai](https://github.com/tomasr/molokai) / [lucario](https://github.com/raphamorim/lucario) | カラースキーム |

### セキュリティ（サプライチェーン対策）

dein はデフォルトブランチの最新コミットを取得するため、リポジトリが乗っ取られると `:call dein#update()` 実行時に悪意あるコードが混入するリスクがあります。

**対策として `dein.toml` の全プラグインにコミットハッシュを固定しています。**

| プラグイン | メンテナンス状況 | 備考 |
|--|--|--|
| scrooloose/nerdtree | 活発 | |
| itchyny/lightline.vim | 活発 | |
| Yggdroot/indentLine | 活発 | |
| liuchengxu/vim-which-key | 活発 | |
| scrooloose/syntastic | 更新少ない | |
| tomasr/molokai | 数年更新なし | 色設定のみで影響小 |
| raphamorim/lucario | 数年更新なし | 色設定のみで影響小 |
| Townk/vim-autoclose | 長期放置 | 要注意・将来的に代替検討 |
| justmao945/vim-clang | 更新少ない | |

**プラグイン更新時のルール**

| 操作 | 対応 |
|--|--|
| `:call dein#update()` で更新するとき | 差分を確認してから `dein.toml` の `rev` を更新する |
| 新しいプラグインを追加するとき | インストール後に `rev` にコミットハッシュを記入する |
| vim-which-key の初回インストール後 | `git -C ~/dotfiles/dein/repos/github.com/liuchengxu/vim-which-key rev-parse HEAD` でハッシュを確認して `rev` に記入する |

---

## tmuxの使い方

### 基本操作

prefix キーは **`Ctrl + b`** です。

| 説明 | コマンド |
|--|--|
| prefix key | `Ctrl + b` |
| 垂直分割（上下） | `prefix` + `-` |
| 水平分割（左右） | `prefix` + `\` |
| ペイン移動 | `Shift + ←↑↓→` |
| スクロールモード開始 | `prefix` + `[` → `↑↓` でスクロール・`q` で終了 |
| ウィンドウ作成 | `prefix` + `c` |
| ウィンドウ切り替え | `prefix` + `n` / `p` |
| セッション一覧 | `prefix` + `s` |
| tmux 起動（分割済み） | `tmux_start` |

### which-key（ショートカット一覧ポップアップ）

`prefix + /` でポップアップが開き、tmux のショートカット一覧が表示されます。`Enter` で閉じます。

### マウス操作

マウス操作が有効になっています (`set -g mouse on`)。

- ペインをクリック → フォーカス移動
- ペイン境界をドラッグ → ペインサイズ変更
- スクロール → ターミナルのスクロール
- テキスト選択 → **`Shift` を押しながらドラッグ**（通常のマウス選択はコピーモードと干渉するため）
