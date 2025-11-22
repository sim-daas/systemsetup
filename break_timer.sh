#!/bin/bash

while true; do
    # Wait for 20 minutes (1200 seconds)
    sleep 1200

    # Send the notification
    notify-send "Health Check" "Time to take a 20-minute eye break!" -u critical -i cup
done
