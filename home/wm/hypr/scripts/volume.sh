#!/usr/bin/env bash
#crolbar

# define app names
music_application_name="spotify"
browser_application_name="Firefox"

# grab app indexes
music_index=$(pactl list sink-inputs | awk -v m_app="$music_application_name" '/Sink Input #/{gsub("#","",$NF); m_id=$NF} /application.name/{if ($0~m_app) print m_id}')
browser_indexes=$(pactl list sink-inputs | awk -v b_app="$browser_application_name" '/Sink Input #/{gsub("#","",$NF); b_id=$NF} /application.name/{if ($0~b_app) print b_id}')

case "$1" in
  music+)
    pactl set-sink-input-volume "$music_index" +4%;;
  music-)
    pactl set-sink-input-volume "$music_index" -4%;;
  browser+)
    for index in $browser_indexes; do
       pactl set-sink-input-volume "$index" +2%
    done;;
  browser-)
    for index in $browser_indexes; do
      pactl set-sink-input-volume "$index" -2%
    done;;
esac

