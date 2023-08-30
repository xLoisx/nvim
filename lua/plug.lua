local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')


--------CMP------------
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


Plug 'nvim-treesitter/nvim-treesitter'

Plug 'notjedi/nvim-rooter.lua'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
-- " or                                , { 'branch': '0.1.x' }
Plug "ibhagwan/fzf-lua"

Plug 'nvim-telescope/telescope-fzf-native.nvim'

Plug 'folke/tokyonight.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'junegunn/vim-easy-align'

vim.call('plug#end')

vim.cmd [[
  let g:gitblame_enabled = 0
]]

