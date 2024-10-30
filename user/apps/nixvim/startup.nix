{
  programs.nixvim = {
    autoCmd = [
      {
        event = [ "VimEnter" ];
        command = ":TransparentEnable";
      }
      #{
      #  event = [ "VimEnter" ];
      #  command = ":TSUpdate";
      #}
    ];
  };
}
