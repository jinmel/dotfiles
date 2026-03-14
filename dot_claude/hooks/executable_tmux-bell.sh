#!/bin/bash
# Notify tmux pane via bell without terminal flicker.
# Using tmux send-keys lets tmux handle the bell as a pane alert
# without the terminal visually rendering it.
if [ -n "$TMUX_PANE" ]; then
  tmux send-keys -t "$TMUX_PANE" BEscape 2>/dev/null ||
    printf '\a' > /dev/tty 2>/dev/null
fi
