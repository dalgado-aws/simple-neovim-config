-- comments start with --
-- this file is configured with instructions from typecraft youtube video
-- https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn
--
--- mapleader the keystore that all custom commands will start with
vim.g.mapleader = " "

-- https://lazy.folke.io/installation
-- lazy plugin manager. installed from github
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


local lazy_options = {}
-- configuring lazy plugin manager to install other plugins
-- plugins is defined in lua/plugins.lua
require("lazy").setup("plugins", lazy_options)
require("vim-options")

   

