xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
blur &
slstatus &
lg &
sleep 1
wallpaper &
monitors &

/* exec dwm */
exec startdwm
