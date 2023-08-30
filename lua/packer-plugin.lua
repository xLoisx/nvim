
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use 'nvim-tree/nvim-web-devicons'
	use { 'kyazdani42/nvim-tree.lua', tag = 'nightly' }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Bufferline
use {'akinsho/bufferline.nvim', tag = "v3.*"}

  --CMP
use { 'saadparwaiz1/cmp_luasnip' }

 --Lsp
 use 'neovim/nvim-lspconfig'

  -- Themes


  --treesitter
     use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Rootekr
use {
    'notjedi/nvim-rooter.lua',
    config = function() require'nvim-rooter'.setup() end
}
use { "ibhagwan/fzf-lua",
  -- optional for icon support
  requires = { "nvim-tree/nvim-web-devicons" }
}

-- Scrollbar
use("petertriho/nvim-scrollbar")

 use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }


end)

