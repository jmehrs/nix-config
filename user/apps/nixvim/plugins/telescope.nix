{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>pf" = "find_files";
      "<leader>po" = "oldfiles";
      "<leader>pg" = "git_files";
      "<leader>ps" = "live_grep";
    };

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "%.ipynb"
      ];
      set_env.COLORTERM = "truecolor";
    };
  };
}
