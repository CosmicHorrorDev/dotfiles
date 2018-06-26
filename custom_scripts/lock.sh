#!/bin/sh

B='#00000000'  # blank
C='#ffffff00'  # clearish
D='#4f97d7cc'  # default
W='#f22272bb'  # wrong

i3lock                        \
\
--line-uses-inside            \
--insidecolor=$B              \
--ringcolor=$D                \
--separatorcolor=$W           \
\
--keyhlcolor=$W               \
--bshlcolor=$W                \
\
--blur 5                      \
--ignore-empty-password       \
--clock                       \
--indicator                   \
--noinputtext=""              \
\
--timecolor=$D                \
--timestr="%H %M"             \
--time-font=Iosevka:bold      \
--timesize=40                 \
--timepos="ix:iy - 10"        \
\
--datecolor=$D                \
--datestr="%m %d"             \
--datesize=18                 \
--date-font=Iosevka:bold      \
--datesize=40                 \
--datepos="ix:iy + 45"        \
\
--verifcolor=$D               \
--ringvercolor=$D             \
--insidevercolor=$C           \
--veriftext="検証する"        \
--verif-font=IPAPGothic:bold  \
--verifsize=40                \
--verifpos="ix:iy + 15"       \
\
--wrongcolor=$W               \
--ringwrongcolor=$W           \
--insidewrongcolor=$C         \
--wrongtext="馬鹿"            \
--wrong-font=IPAPGothic:bold  \
--wrongsize=40                \
--wrongpos="ix:iy + 15"       \
