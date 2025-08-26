#!/bin/bash
# Announce to players before restart server
# Use screen session name as server for example
# If you use different name than mine, change session name in the scripts

# Announce time list
minutes=(30 15 10 5 1)
seconds=(15 10 9 8 7 6 5 4 3 2 1)

screen -S server -X stuff "say Server restarting Sequence in Progress"
screen -S server -X eval "stuff \015"

for ((i=0; i<${#minutes[@]}; i++)); do
    current_time=$(date +'%Y-%m-%d %H:%M:%S')
    screen -S server -X stuff "say Server Restarting in ${minutes[i]} Minutes"
    screen -S server -X eval "stuff \015"
    echo "$current_time / Restart before ${minutes[i]} minutes"
    
    if [ ${i} -eq $((${#minutes[@]}-1)) ]; then
        sleep 45s
    else
        sleep $((${minutes[i+1]}-${minutes[i]}))m
    fi
done


for ((j=0; j<${#seconds[@]}; j++)); do
    current_time=$(date +'%Y-%m-%d %H:%M:%S')
    screen -S server -X stuff "say Server Restarting in ${seconds[j]} Seconds"
    screen -S server -X eval "stuff \015"
    echo "$current_time / Restart before ${seconds[j]} seconds"

    if [ ${j} -eq $((${#seconds[@]}-1)) ]; then
        sleep 1s
    else
        sleep $((${seconds[j+1]}-${seconds[j]}))s
    fi
done

# Make log file
current_time=$(date +'%Y-%m-%d_%H:%M:%S')
screen -S server -X logfile screen_log_$current_time.log
screen -S server -X log
echo "$current_time / Make screen_log_$current_time.log"

# Get player list
screen -S server -X stuff "list"
screen -S server -X eval "stuff \015"
sleep 15s

SEARCH_TEXT="of a max of 20 players online:"
PLAYER_LOG="/path/to/make/log/screen_log_$current_time.log"

FOUND_LINES=$(grep "$SEARCH_TEXT" "$PLAYER_LOG")
echo "$FOUND_LINES" > /path/to/make/txt/file/grep_result.txt

screen -S server -X log

rm -rf $PLAYER_LOG