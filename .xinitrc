xset s off
xset -dpms
xset s noblank

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
      do
      sleep 1
      done &
      exec dwm

exec i3

/* exec startdwm */
/* exec dwm */
