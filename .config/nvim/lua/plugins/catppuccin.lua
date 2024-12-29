-- https://github.com/catppuccin/nvim
-- configuring catppuccing for font, colors etc
return { "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function() 
    vim.cmd.colorscheme "catppuccin"
  end
}
