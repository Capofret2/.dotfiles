# ==============================
# Plugin Initialization
# ==============================
eval "$(zoxide init zsh)"  # Directory navigation plugin

fpath+=($HOME/.oh-my-zsh/custom/themes/pure)

autoload -U promptinit; promptinit
prompt pure

