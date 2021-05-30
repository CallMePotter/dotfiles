xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
blur &
slstatus &
lg &
wallpaper &
monitors &

/* exec dwm */
exec startdwm
