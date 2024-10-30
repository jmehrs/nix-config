{ config, lib, ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let
      normal =
        lib.mapAttrsToList
        (key: action: {
          mode = "n";
          inherit action key;
        })
        {
          # Ported from old config
          "<leader>pv".__raw = ''
            function()
              vim.cmd.Ex()
            end
          '';
          "<C-d>" = "<C-d>zz";
          "<C-u>" = "<C-u>zz";
          "<leader>y" = "[['=\"+y]]";
          "<leader>Y" = "[['=\"+Y]]";
          "<leader>x" = "<cmd>!chmod +x %<CR>";

          # save by \+s or Ctrl+s
          "<C-s>" = ":w<CR>";

          # Formatting
          "<leader>f".__raw = ''
            function()
              vim.lsp.buf.format()
            end
          '';
          
          # navigate windows
          "<leader>h" = "<C-w>h";
          "<leader>j" = "<C-w>j";
          "<leader>k" = "<C-w>k";
          "<leader>l" = "<C-w>l";

          # resize with arrows
          "<C-Up>" = ":resize -2<CR>";
          "<C-Down>" = ":resize +2<CR>";
          "<C-Left>" = ":vertical resize +2<CR>";
          "<C-Right>" = ":vertical resize -2<CR>";

          # move current line up/down
          # M = Alt key
          "<M-k>" = ":move-2<CR>";
          "<M-j>" = ":move+<CR>";
        };
      visual =
        lib.mapAttrsToList
        (key: action: {
          mode = "v";
          inherit action key;
        })
        {
          # move selected line / block of text in visual mode
          "K" = ":m '<-2<CR>gv=gv";
          "J" = ":m '>+1<CR>gv=gv";
        };
      input =
        lib.mapAttrsToList
        (key: action: {
          mode = "i";
          inherit action key;
        })
        {
          # move selected line / block of text in visual mode
          "<C-c>" = "<Esc>";
        };
    in
      config.nixvim.helpers.keymaps.mkKeymaps
      {options.silent = true;}
      (normal ++ visual ++ input);
  };
}
