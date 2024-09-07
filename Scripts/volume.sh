vol_up() {
	pactl set-sink-volume @DEFAULT_SINK@ +5%
}

vol_down() {
	pactl set-sink-volume @DEFAULT_SINK@ -5%
}

vol_toggle() {
	pactl set-sink-mute @DEFAULT_SINK@ toggle
}

case "$1" in
	"--up")
		vol_up
		;;
	"--down")
		vol_down
		;;
	"--mute")
		vol_toggle
		;;

	*)
		echo "Usage: $0 {--up,--down,--mute}"
		exit 1
		;;
esac


