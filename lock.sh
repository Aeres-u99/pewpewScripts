#!/bin/sh
rm /tmp/*.png
B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#64707000'  # default
T='#b050ffff'  # text
W='#880000bb'  # wrong
V='#b050ffff'  # verifying
overlaypath=$(ls /home/akuma/Pictures/Overlays | shuf -n 1)
overlayfile="/home/akuma/Pictures/Overlays/$overlaypath"
scrot /tmp/currentworkspace.png
convert /tmp/currentworkspace.png -blur 0x5 /tmp/workspaceblur.png
composite -gravity southwest $overlayfile /tmp/workspaceblur.png /tmp/lockbg.png
i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
-i /tmp/lockbg.png    \
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
#--keylayout 2         \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc

