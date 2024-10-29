{ config, lib, pkgs, ... }:
let
  myAliases = {
    ls = "eza --icons -l -T -L=1";
    cat = "bat";
    htop = "btm";
    fd = "fd -Lu";
    grep = "rg";
    fetch = "disfetch";
    gitfetch = "onefetch";
  };
in
{

  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };   

  programs.zsh = {
    enable = true;
    shellAliases = myAliases;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # blinks is also really nice
    };
  };   

  # Collection of useful CLI apps
  home.packages = with pkgs; [
    # Command Line
    disfetch onefetch
    bat eza fd bottom ripgrep
  ];

}




