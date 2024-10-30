{ config, lib, ... }:
{
  programs.nixvim.plugins.fugitive = {
    enable = true;
  };

  programs.nixvim = {
    keymaps = let
      normal =
        lib.mapAttrsToList
        (key: action: {
          mode = "n";
          inherit action key;
        })
        {
          "<leader>gs".__raw = ''
            function()
              vim.cmd.Git()
            end
          '';
        };
    in
      config.nixvim.helpers.keymaps.mkKeymaps
      {options.silent = true;}
      normal;
  };
}


