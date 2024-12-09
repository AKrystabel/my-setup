#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example 2>&1 --config=$HOME/.config/polybar/config.ini | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."