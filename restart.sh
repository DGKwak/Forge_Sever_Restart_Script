#!/bin/sh

while IFS= read -r line
do
    current_time=$(date +'%Y-%m-%d %H:%M:%S')
    screen -S server -X stuff "kick $line"
    screen -S server -X eval "stuff \015"
    echo "Current time: $current_time"
done < "/path to players.txt"

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "stop"
screen -S server -X eval "stuff \015"
echo "Current time: $current_time"
sleep 1m

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "sh /path/to/run.sh"
screen -S server -X eval "stuff \015"
echo "Current time: $current_time"