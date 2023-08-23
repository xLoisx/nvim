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

-- Open explorer.exe in current directory
api.nvim_set_keymap('n', '<leader>exp', ':!explorer.exe . <cr><cr>', options)



-- Enable NvimTree as a file explorer
api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Set the working directory of NvimTree to the current directory
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1

-------- PACKER --------
require 'packer-plugin'

------- PLUG ----------
require 'plug'
