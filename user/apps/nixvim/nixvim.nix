{ inputs, ... }:
{

  imports = [
    ./options.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };

}
