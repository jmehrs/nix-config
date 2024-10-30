{
  programs.nixvim.plugins.treesitter = {

    enable = true;
    indent = true;
    ensureInstalled = [
      "css"
      "git_config"
      "git_rebase"
      "gitattributes"
      "gitcommit"
      "typescript"
      "javascript"
      "rust"
      "python"
      "go"
      "json"
      "html"
    ];

  };
}
