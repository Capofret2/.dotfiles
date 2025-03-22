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

# ==============================
# Application Aliases
# ==============================
# GUI Application Aliases
alias wechat='/opt/wechat/wechat'
alias steam='~/.millennium/start.sh'
alias change-wallpaper='~/Repos/Hyprpaper-gui/change-wallpaper & disown'

# Container
alias docker-run-easyconnect='vncviewer & disown; docker run --rm --device /dev/net/tun --cap-add NET_ADMIN -ti -e PASSWORD=1234 -e URLWIN=1 -v $HOME/.ecdata:/root -p 127.0.0.1:5901:5901 -p 127.0.0.1:1080:1080 -p 127.0.0.1:8888:8888 hagb/docker-easyconnect:7.6.7'
