o = vim.o
api = vim.api
opt = vim.opt
options = { noremap = true}

o.number=true
o.relativenumber=true
o.hlsearch=false

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

-- Backup file
o.swapfile=false
o.backup=false
o.writebackup=false
o.undofile=true
opt.undodir=vim.fn.expand("~/.config/nvim-undo")
o.foldmethod='marker'
o.foldlevel=99
o.foldenable=false


-------- PACKER --------
require 'packer-plugin'

------- PLUG ----------
require 'plug'

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.zimbu = {
  install_info = {
    url = "~/projects/tree-sitter-zimbu", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "zu", -- if filetype does not match the parser name
}

vim.cmd[[
let g:loaded_ruby_provider = 0
]]
