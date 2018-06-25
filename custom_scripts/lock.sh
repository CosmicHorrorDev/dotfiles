#!/bin/sh

B='#00000000'  # blank
C='#ffffff00'  # clearish
D='#4f97d7cc'  # default
W='#f22272bb'  # wrong

i3lock                   \
\
--line-uses-inside       \
--insidecolor=$B         \
--ringcolor=$D           \
--separatorcolor=$W      \
\
--keyhlcolor=$W          \
--bshlcolor=$W           \
\
--blur 5                 \
--ignore-empty-password  \
--clock                  \
--indicator              \
\
--timecolor=$D           \
--timestr="%H:%M"        \
--time-font=Iosevka:bold \
--timesize=30            \
\
--datecolor=$D           \
--datestr="%m:%d" \
--datesize=18            \
--date-font=Iosevka:bold \
--datesize=30            \
\
--verifcolor=$D          \
--ringvercolor=$D        \
--insidevercolor=$C      \
--veriftext="検証する"   \
--verif-font=IPAPGothic  \
--verifsize=40           \
--verifpos="ix:iy + 15"  \
\
--wrongcolor=$W          \
--ringwrongcolor=$W      \
--insidewrongcolor=$C    \
--wrongtext="馬鹿"       \
--wrong-font=IPAPGothic  \
--wrongsize=40           \
--wrongpos="ix:iy + 15"  \
