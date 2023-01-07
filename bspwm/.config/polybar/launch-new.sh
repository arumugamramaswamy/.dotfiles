# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar topleft -c $(dirname $0)/config.ini &

# Launch polybar
polybar topright -c $(dirname $0)/config.ini &

if xrandr -q | grep -q 'HDMI-A-0 connected'; then
	polybar external-topleft -c $(dirname $0)/config.ini &
fi
