{ inputs, config, pkgs, ... }:

{
  imports = [
    ./user/shell/sh.nix

    # Maybe bundle the apps together into 1 import
    ./user/apps/git.nix
    ./user/apps/htop.nix
    ./user/apps/nixvim/nixvim.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "jai";
  home.homeDirectory = "/home/jai";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
