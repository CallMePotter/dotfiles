xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
blur &
wallpaper &
monitors &
slstatus &
lg &

/* exec dwm */
exec startdwm
