-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'kvrohit/mellow.nvim',
	  as = 'mellow',
	  config = function()
		  vim.cmd('colorscheme mellow')
	  end
  }

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

  use {
	  'alexghergh/nvim-tmux-navigation', config = function()
		  require 'nvim-tmux-navigation'.setup {
			  disable_when_zoomed = true, -- defaults to false
			  keybindings = {
				  left = "<C-h>",
				  down = "<C-j>",
				  up = "<C-k>",
				  right = "<C-l>",
				  last_active = "<C-\\>",
				  next = "<C-Space>",
			  }
		  }
	  end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({
        keywords = {
          FIX = {
            alt = { "FIXME", "BUG", "ISSUE" }
          },
          WARN = {
            alt = { "WARNING", "XXX" }
          },
        },
        merge_keywords = true,
        highlight = {
          pattern = [[.*<(KEYWORDS)\s*]], -- match without colon. probably triggers false positives
          exclude = { "json", "markdown" }
        }
        -- search = {
        --   command = "rg",
        --   args = {
        --     "--color=never",
        --     "--no-heading",
        --     "--with-filename",
        --     "--line-number",
        --     "--column",
        --   },
        --   pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. Probably triggers false positives
        -- },
      })
    end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('ray-x/go.nvim')
  use('ray-x/guihua.lua')
end)
