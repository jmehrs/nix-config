{
  programs.nixvim = {

    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
      # Uncomment below (& comment above) line if using Wayland display
      #   TODO: Make conditional statement to switch automatically
      #providers.wl-copy.enable = true;
    };

    opts = {
      updatetime = 100; # Faster completion

      number = true; # Display the absolute line number of the current line
      relativenumber = true; # Relative line numbers

      hidden = true; # Keep closed buffer open in the background

      splitbelow = true; # A new window is put below the current one
      splitright = true; # A new window is put right of the current one

      swapfile = false; # Disable the swap file

      undofile = true; # Automatically save and restore undo history

      incsearch = true; # Incremental search: show match for partly typed search command
      hlsearch = true;  # Highlight all search matches

      inccommand = "split"; # Search and replace: preview changes in quickfix list

      scrolloff = 8; # Number of screen lines to show around the cursor

      cursorline = false; # Highlight the screen line of the cursor
      cursorcolumn = false; # Highlight the screen column of the cursor
      signcolumn = "yes"; # Whether to show the signcolumn
      colorcolumn = "80"; # Columns to highlight

      laststatus = 3; # When to use a status line for the last window

      fileencoding = "utf-8"; # File-content encoding for the current buffer

      termguicolors = false; # Disables 24-bit RGB color in the |TUI|

      spell = false; # Highlight spelling mistakes (local to window)
      wrap = false; # Prevent text from wrapping

      tabstop = 2; # Number of spaces a <Tab> in the text stands for (local to buffer)
      shiftwidth = 2; # Number of spaces used for each step of (auto)indent (local to buffer)
      expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      autoindent = true; # Copy indent from current line when starting new line
      smartindent = true; # Do clever auto indenting based on text entered

      foldlevel = 99; # Folds with a level higher than this number will be closed 
    };

  };  
}
