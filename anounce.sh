#!/bin/sh
current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server restarting Sequence in Progress"
screen -S server -X eval "stuff \015"
screen -S server -X stuff "say Server restarting in 30 minutes"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 30 minutes"
sleep 15m

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 15 Minutes"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 15 minutes"
sleep 5m

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 10 Minutes"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 10 minutes"
sleep 5m

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 5 Minutes"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 5 minutes"
sleep 4m

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 1 Minute"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 1 minute"
sleep 45s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 15 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 15 seconds"
sleep 5s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 10 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 10 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 9 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 9 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 8 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 8 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 7 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 7 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 6 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 6 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 5 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 5 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 4 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 4 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 3 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 3 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 2 Seconds"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 2 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d %H:%M:%S')
screen -S server -X stuff "say Server Restarting in 1 Second"
screen -S server -X eval "stuff \015"
echo "$current_time / Restart before 1 seconds"
sleep 1s

current_time=$(date +'%Y-%m-%d_%H:%M:%S')
screen -S server -X logfile screen_log_$current_time.log
screen -S server -X log
echo "$current_time / Make screen_log_$current_time.log"

screen -S server -X stuff "list"
screen -S server -X eval "stuff \015"
sleep 15s

SEARCH_TEXT="of a max of 20 players online:"
FILE_PATH="/path to make log/screen_log_$current_time.log"

FOUND_LINES=$(grep "$SEARCH_TEXT" "$FILE_PATH")
echo "$FOUND_LINES" > /path to make txt file/grep_result.txt

screen -S server -X log

sudo mv ~/screen_log_$current_time.log ~/screen_log