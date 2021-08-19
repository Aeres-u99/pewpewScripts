#/bin/env bash


#
# A simple script that utilises tesseract ocr engine to basically
# get a text location selection area and then moves it to clipboard, super nice
#

random=$RANDOM
imagefile="/tmp/sloppy.$random.png"
text="/tmp/translation.$random"
echo "$imagefile"
slop=$(slop -f "%g") || exit 1
read -r G < <(echo $slop)
import -window root -crop $G $imagefile
tesseract $imagefile $text 2>/dev/null 
cat $text".txt" | xclip -selection c
notify-send "Sent to Clipboard"
