#!/bin/sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

eval "$(ck-launch-session dbus-launch --sh-syntax --exit-with-session)"
case $(tty | cut -b9-) in
    (1) exec i3                 ;;
    (2) exec startxfce4         ;;
    (3) exec openbox-session    ;;
esac
# exec i3
# exec i3
# echo i3-$(date +'%g%m%d%k%M%S').log >> .i3.log
# exec i3 >> .i3.log 2>&1
