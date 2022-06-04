# pomo
Probably the simplest pomodoro timer CLI for Linux

### Installation

Place the `pomo.sh` file in `$HOME/.local/bin` or `/usr/local/bin` folders

### Usage
- First argument: work time in minutes
- Second argument: break time in minutes
```
pomo 15 5
```

### Configurations

You can change the variables `work_msg` and `break_msg` to change the display message of the notifications.
To play a sound you must change the variable `play_sound` to `true`, `sound_path` to the path of the sound you want to play, and the `play_command` to the command it will be used to play the sound, placing `sound_path` variable in it.
