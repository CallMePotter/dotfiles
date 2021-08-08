xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
# exec bspwm

blur &
slstatus &
lg &
sleep 1
wallpaper &
monitors &

/* exec dwm */
exec startdwm
