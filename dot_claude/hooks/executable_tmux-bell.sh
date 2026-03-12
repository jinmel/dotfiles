#!/bin/bash
# Send bell to the tmux pane where Claude is running
# $TMUX_PANE is set by tmux and available in the hook's environment
if [ -n "$TMUX_PANE" ]; then
  # Ring bell in the originating pane (not the active one)
  printf '\a' > /dev/tty 2>/dev/null
fi
