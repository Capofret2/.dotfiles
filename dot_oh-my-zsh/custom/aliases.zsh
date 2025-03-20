# ==============================
# Aliases
# ==============================
# File Operations
alias ll='ls --color=auto -lh'
alias lla='ls --color=auto -lha'
alias duh='du -h -d 1'

# Editor Related
alias vi='nvim'
alias vim='nvim'
alias vi-zshrc='nvim ~/.zshrc'
alias source-zshrc='source ~/.zshrc'
alias dot-edit='chezmoi edit'
alias dot-apply='chezmoi apply'

# System Management
alias mnt-pssd='sudo mount UUID=362426E02426A2BB /mnt/pssd/samsung-t7-shield'

# Clipboard Operations
# alias ccb="xclip -selection clipboard"
alias ccb="wl-copy"

# Shuffle Wallpapers
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)
# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
# Apply the selected wallpaper
alias shuffle-wallpaper='hyprctl hyprpaper reload ,"$WALLPAPER"'

# ==============================
# Application Aliases
# ==============================
# GUI Application Aliases
alias wechat='/opt/wechat/wechat'
alias steam='~/.millennium/start.sh'

