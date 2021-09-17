# setxkbmap no
# xbindkeys

# # Sets the WM name (fixes Java bugs)
# export _JAVA_AWT_WM_NONREPARENTING=1 
# export AWT_TOOLKIT=MToolkit 
# wmname LG3D

# # Starts the unsplash command
# exec unsplash &

# # Runs the bar.sh script
# while true; do
# 	sleep 1
# 	sh ~/s/bar.sh
# done &

# # test for an existing bus daemon, just to be safe
# if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#   # if not found, launch a new one
#   eval `dbus-launch --sh-syntax --exit-with-session`
#   echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
# fi

# # Starts DWM
# exec dwm

exec ~/.dwm/autostart