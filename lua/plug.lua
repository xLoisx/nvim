local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')


--------CMP------------
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


Plug 'notjedi/nvim-rooter.lua'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim'

Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-fugitive'

Plug 'L3MON4D3/LuaSnip'

Plug 'saadparwaiz1/cmp_luasnip'

Plug 'f-person/git-blame.nvim'

Plug 'tmsvg/pear-tree'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'psliwka/vim-smoothie'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug('mg979/vim-visual-multi', {branch = 'master'})

Plug ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

-- Plug 'EdenEast/nightfox.nvim'  

Plug 'folke/tokyonight.nvim'
Plug 'junegunn/fzf'

Plug 'neovim/nvim-lspconfig'

Plug 'vim-ruby/vim-ruby'

vim.call('plug#end')

vim.cmd [[
  let g:gitblame_enabled = 0
]]

