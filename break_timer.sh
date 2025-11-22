#!/bin/bash

while true; do
    # Wait for 20 minutes (1200 seconds)
    sleep 1200

    # Send the notification
    notify-send "Time to take a 20-minute eye break!" -u normal -t 5000 -i cup
done
