local packer = require('packer')

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'rose-pine/neovim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-tree/nvim-tree.lua'
	use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
end)
