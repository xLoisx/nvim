o = vim.o
api = vim.api
options = { noremap = true}

o.number=true
o.relativenumber=true

-- Copy to system clipboard
api.nvim_set_keymap('v', '<leader>y', '"+y', options)
api.nvim_set_keymap('n', '<leader>Y', '"+yg_', options)
api.nvim_set_keymap('n', '<leader>y', '"+y', options)
api.nvim_set_keymap('n', '<leader>yy', '"+yy', options)

-- Paste from system clipboard
api.nvim_set_keymap('n', '<leader>p', '"+p', options)
api.nvim_set_keymap('n', '<leader>P', '"+P', options)
api.nvim_set_keymap('v', '<leader>p', '"+p', options)
api.nvim_set_keymap('v', '<leader>P', '"+P', options)

-------- PACKER --------
require 'packer-plugin'
