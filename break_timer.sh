#!/bin/bash

while true; do
    # Wait for 20 minutes (1200 seconds)
    sleep 1200

    # Send the notification
    notify-send "Health Check" "<span font='26'>Time to take a 20-minute eye break!</span>" -u critical -i cup
done
