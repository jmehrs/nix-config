{ inputs, ... }:
{

  imports = [
    ./options.nix
    ./startup.nix
    ./remap.nix
    ./plugins/plugins-bundle.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };

}
