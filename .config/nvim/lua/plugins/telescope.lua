
-- https://github.com/nvim-telescope/telescope.nvim
return {
  -- https://github.com/nvim-telescope/telescope.nvim
   'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }, 
 
config = function()
-- space ff to find files
-- space fg to grep
-- space fb to switch buffers
-- space fh for help tags


  local telescope = require("telescope.builtin")
  vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })

  vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })

  vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })

  vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
end
}

