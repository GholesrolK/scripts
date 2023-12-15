#!/bin/sh

video_path="$HOME/Videos/Recordings"
mkdir -p "$video_path"
gpu-screen-recorder -w focused -s 1920x1080 -f 60 -a "$(pactl get-default-sink).monitor|$(pactl info | grep 'Default Source' | awk '{print $3}')" -c mp4 -r 90 -o "$video_path"
