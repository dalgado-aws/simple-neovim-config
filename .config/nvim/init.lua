-- this file is configured with instructions from typecraft youtube video
-- https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn
-- comments start with --
--
-- since this is a lua file, the vim specific commands have to be invoked with vim.cmd
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- mapleader the keystore that all custom commands will start with
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

-- plugins list that will be managed by lazy 
local plugins = {
  -- https://github.com/catppuccin/nvim
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- https://github.com/nvim-telescope/telescope.nvim
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } }
}
local lazy_options = {}

-- configuring lazy plugin manager to install other plugins
require("lazy").setup(plugins, lazy_options)

-- https://github.com/catppuccin/nvim
-- configuring catppuccing for font, colors etc
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- https://github.com/nvim-telescope/telescope.nvim
local telescope = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
-- space ff to find files
-- space fg to grep
-- space fb to switch buffers
-- space fh for help tags

