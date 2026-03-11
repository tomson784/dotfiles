if [ -z ${TMUX} ]; then
    # 覚えておきたいワンライナー
    tmux new-session \; split-window -v \; split-window -h \; source-file ~/.tmux.conf\;
fi
