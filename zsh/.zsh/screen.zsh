LEFT="DP-4"
MIDDLE="DP-3"
RIGHT="DP-5"

# automation:
# - disable all output
# - order screens
# - turn on correct screens
# - restart waybar & redshift

function bind_workspace() {
  swaymsg "[workspace="$2"] move workspace to output $1"
  swaymsg "workspace $2 output $1"
}

function move_screen() {
  swaymsg "output $1 pos $2 0 res 1920x1080"
}

function disable_screen() {
  swaymsg "output eDP-1 disable"
}

function enable_screen() {
  swaymsg "output eDP-1 enable"
}

function gaps() {
  swaymsg "gaps outer all set $1"
  swaymsg "gaps outer $1"
  swaymsg "gaps inner all set $2"
  swaymsg "gaps inner $2"
}

function alacritty_config() {
  (
    cd ~/.config/alacritty
    cp "$1" alacritty.yml
  )
}

function set_wallpaper() {
  swaymsg "output \"*\" background /home/martin/pictures/wallpapers/$1 fill"
}

function enable_dock() {
  disable_screen
  move_screen "$LEFT" "0"
  move_screen "$MIDDLE" "1920"

  bind_workspace "$LEFT" "3"
  bind_workspace "$MIDDLE" "2"
  bind_workspace "$MIDDLE" "4"
  bind_workspace "$MIDDLE" "5"

  bind_workspace "$RIGHT" "1"
  bind_workspace "$RIGHT" "7"

  swaymsg "output $RIGHT transform 270"

  gaps 20 20
  alacritty_config docked
}

function disable_dock() {
  enable_screen
  gaps 0 0
  alacritty_config mobile
}
