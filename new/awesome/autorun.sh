#!/bin/sh
xinput float 15
xrandr --output LVDS1 --off --output HDMI1 --auto
pactl set-sink-mute @DEFAULT_SINK@ 0
pactl set-sink-volume @DEFAULT_SINK@ 80%
sleep 2s
mpv ~/Videos/test/beep.opus &
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "volumeicon"
run "mpd"
run "redshift"
