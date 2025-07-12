function hms
  nix run github:nix-community/home-manager -- switch --flake $HM_HOME#tiramisu $argv
end

function hmcd
  cd $HM_HOME $argv
end
