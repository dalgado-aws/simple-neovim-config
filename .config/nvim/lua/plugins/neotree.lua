  -- https://github.com/nvim-neo-tree/neo-tree.nvim
return   {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim"
    }
    , 
    config = function() 

-- configuring neovim tree
-- https://github.com/nvim-neo-tree/neo-tree.nvim
--
vim.keymap.set('n', '<c-n>', ':Neotree filesystem reveal left<CR>')
end
  }
