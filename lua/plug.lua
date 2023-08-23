local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')


--------CMP------------
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


Plug 'nvim-treesitter/nvim-treesitter'


 Plug 'williamboman/mason.nvim'
 Plug 'williamboman/mason-lspconfig.nvim'


vim.call('plug#end')

vim.cmd [[
  let g:gitblame_enabled = 0
]]

