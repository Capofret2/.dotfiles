# ==============================
# Plugin Initialization
# ==============================
eval "$(zoxide init zsh)"  # Directory navigation plugin

autoload -U promptinit; promptinit
prompt pure

fpath+=($HOME/.oh-my-zsh/custom/themes/pure)
