xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
blur &
wallpaper &
monitors &
lg &
slstatus &

/* exec dwm */
exec startdwm
