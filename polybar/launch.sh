#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1

polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
