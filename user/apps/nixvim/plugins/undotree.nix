{ config, lib, ... }:
{
  programs.nixvim.plugins.undotree = {
    enable = true;

    settings = {
      SetFocusWhenToggle = true;
    };
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
          "<leader>u".__raw = ''
            function()
              vim.cmd.UndotreeToggle()
            end
          '';
        };
    in
      config.nixvim.helpers.keymaps.mkKeymaps
      {options.silent = true;}
      normal;
  };
}


