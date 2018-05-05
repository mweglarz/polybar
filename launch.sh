#!/usr/bin/env sh

# terminate already running instances
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bottomR 2>/dev/null &
polybar bottomL 2>/dev/null &
polybar topL 2>/dev/null &
polybar topR 2>/dev/null &

echo "Bars launched..."

