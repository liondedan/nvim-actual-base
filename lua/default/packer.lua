-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
	  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	  vim.cmd([[packadd packer.nvim]])
	  return true
	end
	return false
  end

  local packer_bootstrap = ensure_packer() -- true if packer was just installed
  
  -- autocommand that reloads neovim and installs/updates/removes plugins
  -- when file is saved
  vim.cmd([[ 
	augroup packer_user_config
	  autocmd!
	  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
	augroup end
  ]])
  
  -- import packer safely
  local status, packer = pcall(require, "packer")
  if not status then
	return
  end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
--   use ("arcticicestudio/nord-vim")
  use 'shaunsingh/nord.nvim'

  -- vs-code like icons
  use("nvim-tree/nvim-web-devicons")

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding w/ telescope
--   use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
--   use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  -- commenting with gc
  use("numToStr/Comment.nvim")

  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)


require('packer').startup(function()
    use {
      'stevearc/oil.nvim',
      config = function() require('oil').setup() end
    }
end)

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end


end)