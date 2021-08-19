#!/bin/env bash
export DISPLAY=:0
battery=$(acpi | cut -d ":" -f 2 | cut -d "," -f 2)
batterypercentage=$(echo $battery | cut -d "%" -f 1)
if [ $batterypercentage -lt 15 ]; then
    notify-send -u low "Low battery : $battery"
elif [ $batterypercentage -lt 12 ]; then
    notify-send -u low "Very Low Battery : $battery"
elif [ $batterypercentage -lt 9 ]; then
    notify-send -u critical "Powering System Down"
    systemctl suspend
else
    notify-send "All Good : $battery"
fi


