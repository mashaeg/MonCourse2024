#!/bin/bash

filepath="/var/log/logify/app.log"

create_log_entry() {
    local info_messages=("Connected to database" "Task completed successfully" "Operation finished" "Initialized application")
    local random_message=${info_messages[$RANDOM % ${#info_messages[@]}]}
    local time=$(date +%s)
    local log='{"status": 200, "msg": "'$random_message'", "time": '$time'}'
    echo "$log"
}

mkdir -p /var/log/logify
touch $filepath

while true; do
    create_log_entry >> $filepath
    sleep 5
done