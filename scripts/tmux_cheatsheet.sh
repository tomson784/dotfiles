#!/bin/bash
cat << 'EOF'
  tmux Shortcuts
  ================================================
  prefix key          Ctrl+b
  ------------------------------------------------
  [ペイン]
  prefix + -          垂直分割（上下）
  prefix + \          水平分割（左右）
  Shift + ←↑↓→       ペイン移動
  prefix + [          スクロールモード (q で終了)

  [ウィンドウ]
  prefix + c          新しいウィンドウ作成
  prefix + n          次のウィンドウ
  prefix + p          前のウィンドウ

  [セッション]
  prefix + s          セッション一覧
  prefix + d          セッションをデタッチ

  [マウス操作]
  クリック            ペイン移動
  Shift + ドラッグ    テキスト選択

  ------------------------------------------------
  Press Enter to close
EOF
read
