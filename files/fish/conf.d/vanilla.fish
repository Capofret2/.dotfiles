function l # modern ls
  eza -lah $argv
end

function ls
  eza $argv
end

function tree
  eza --tree --git-ignore $argv
end

# function cat
#   bat $argv
# end
