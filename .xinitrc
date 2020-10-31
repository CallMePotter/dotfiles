xset s off
xset -dpms
xset s noblank

source ~/.zshenv &
flameshot &
blur &
wallpaper &
monitors &
bar &

/* exec dwm */
exec startdwm
