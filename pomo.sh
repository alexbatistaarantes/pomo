#!/usr/bin/env bash

work_msg="Let's work!"
break_msg="Take a break!"
play_sound=false
sound_path="~/Music/bell.mp3"
play_command="paplay --volume=35000 ${sound_path}"

arg1=$1
arg2=$2

work_min=${arg1:?Example: pomo 15 5}
work_sec=$((work_min * 60))
break_min=${arg2:?Example: pomo 15 5}
break_sec=$((break_min * 60))

echo "Pomodoro started"
echo "\t${work_min} minutes of work"
echo "\t${break_min} minutes of break"

while true; do
    date '+%H:%M' && sleep "${work_sec:?}"
    notify-send --expire-time=10000 --app-name=pomo "${break_msg}"
    if $play_sound; then
        eval $play_command
    fi

    date '+%H:%M' && sleep "${break_sec:?}"
    notify-send --expire-time=10000 --app-name=pomo "${work_msg}"
    if $play_sound; then
        eval $play_command
    fi
done
