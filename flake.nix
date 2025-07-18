{
  description = "Tiramisu's Home Manager config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      homeConfigurations.tiramisu = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          {
            home.username = "tiramisu";
            home.homeDirectory = "/home/tiramisu";
            home.stateVersion = "25.05";

            home.sessionVariables = {
              EDITOR = "nvim";
            };

            home.packages = with pkgs; [
              eza
              gotop
            ];

            programs.fish.enable = true;
            home.file.".config/fish".source = ./files/fish;
            home.file.".config/fish".recursive = true;

            programs.neovim.enable = true;
            home.file.".config/nvim".source = ./files/nvim;
            home.file.".config/nvim".recursive = true;

            programs.yazi.enable = true;
            home.file.".config/yazi".source = ./files/yazi;
            home.file.".config/yazi".recursive = true;

            programs.bat = {
              enable = true;
              config = {
                # theme = "catppuccin-latte";
                pager = "less -FR";
              };
            };

            programs.lazygit = {
              enable = true;
              settings = {
                gui.theme = {
                  lightTheme = "catppuccin-latte";
                  darkTheme = "catppuccin-mocha";
                };
              };
            };

          }
        ];
      };
    };
}

