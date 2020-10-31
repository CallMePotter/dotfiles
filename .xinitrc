xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
blur &
wallpaper &
monitors &
bar &

/* exec dwm */
exec startdwm
