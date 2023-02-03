return require('packer').startup( function()
	 -- Packer plugin is call itself
	 use 'wbthomason/packer.nvim'

	 -- Telescope
	 use {
		 'nvim-telescope/telescope.nvim',branch  = '0.1.x',
		requires = {{'nvim-lua/plenary.nvim'}}
	 	}
	-- Rose Color Scheme
	use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  	})	 

	-- TreeSitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  	use('nvim-treesitter/playground')
	
	-- HarPoon
	use('theprimeagen/harpoon')
  	use('mbbill/undotree')

	
 end)
	
