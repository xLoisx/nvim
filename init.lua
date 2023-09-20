o = vim.o
api = vim.api
opt = vim.opt
options = { noremap = true }
o.number=true
o.relativenumber=true
o.hlsearch=false
o.foldmethod='marker'
o.foldlevel=99
o.foldenable=false
o.autoindent=true
o.wrap=false
o.tabstop=2                           					-- Width of tab character
o.softtabstop=2                       					-- Fine tunes the amount of white space to be added
o.shiftwidth=2                        					-- Number of spaces to use for autoindenting
o.expandtab=true 


-- Backup file
o.swapfile=false
o.backup=false
o.writebackup=false
o.undofile=true
opt.undodir=vim.fn.expand("~/.config/nvim-undo")

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


api.nvim_set_keymap('n', '<leader>w', ':w <cr>', options)
api.nvim_set_keymap('n', '<leader>q', ':q <cr>', options)

api.nvim_set_keymap('i', '<c-c>', '</<c-x><c-o><c-x>', { noremap = true, silent = true })


-- Enable NvimTree as a file explorer
api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Set the working directory of NvimTree to the current directory
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1

-- Faster open splits
api.nvim_set_keymap('n', '<leader>vs', ':vsplit <cr>', options)
api.nvim_set_keymap('n', '<leader>sp', ':split <cr>', options)

api.nvim_set_keymap('n', '<enter>', 'o<esc>', options)
api.nvim_set_keymap('n', 's<enter>', 'o<esc>', options)

api.nvim_set_keymap('n', '<leader>gblame', ':GitBlameToggle <cr>', options)



-------- PACKER --------
require 'packer-plugin'

------- PLUG ----------
require 'plug'


