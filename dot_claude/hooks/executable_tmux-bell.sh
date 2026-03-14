#!/bin/bash
# Notify tmux pane via bell character.
# tmux detects the bell and triggers pane/window alerts.
if [ -n "$TMUX_PANE" ]; then
  printf '\a' > /dev/tty 2>/dev/null
fi
