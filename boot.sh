#!/usr/bin/env bash
tmux new-session -s PI -d
tmux rename-window -t PI:1 MC
tmux send "mc -x /home/pi" ENTER
tmux new-window -n VIM
tmux send "NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim" ENTER
tmux send Escape ":Tmuxline" ENTER
