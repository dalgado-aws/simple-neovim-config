-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
return 
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

  config = function() 
    local ts_configs = require("nvim-treesitter.configs")

    ts_configs.setup({
      -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file
      -- at command prompt :TSInstall java
      ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "bash" , "java"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end 
}
