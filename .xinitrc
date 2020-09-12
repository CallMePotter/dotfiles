xset s off
xset -dpms
xset s noblank

/* exec i3 */

source ~/.zshenv
blur &
monitors &
wallpaper &
bar &

exec dwm
exec startdwm
