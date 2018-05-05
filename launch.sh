#!/usr/bin/env sh

# terminate already running instances
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bar1 &
# polybar bar2 &

echo "Bars launched..."

