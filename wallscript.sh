feh --bg-fill $(ls /home/akuma/Pictures/black/* | shuf -n 1) && wallblur.sh -i ~/Pictures/black/$(((cat ~/.fehbg | tail -n 1) | sed "s/'//g" ) | cut -d "/" -f 6)
