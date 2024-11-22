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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shellRaining/hlchunk.nvim'
  use 'catppuccin/nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'scottmckendry/cyberdream.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-treesitter/nvim-treesitter'
  use 'stevearc/dressing.nvim'
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use {
  'nvim-telescope/telescope.nvim', 
   tag = '0.1.8',
   requires = {{'nvim-lua/plenary.nvim'}}
    }
  use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}

  if packer_bootstrap then
    require('packer').sync()
  end
end)


