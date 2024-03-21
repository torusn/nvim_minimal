
require("lazy").setup({
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'kvrohit/mellow.nvim',
    as = 'mellow',
    config = function()
      vim.cmd('colorscheme mellow')
    end
  },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  -- Autocompletion
  {'hrsh7th/nvim-cmp', event = { "InsertEnter", "CmdlineEnter" }},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'saadparwaiz1/cmp_luasnip'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-nvim-lua'},
  -- Snippets
  {'L3MON4D3/LuaSnip'},
  {'rafamadriz/friendly-snippets'},
  { 'alexghergh/nvim-tmux-navigation', config = function()
    require'nvim-tmux-navigation'.setup {
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
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
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
    }
  },
  {'nvim-treesitter/nvim-treesitter'},
  {'theprimeagen/harpoon'},
  {'mbbill/undotree'},
  {'tpope/vim-fugitive'},
  {'ray-x/go.nvim'},
  {'ray-x/guihua.lua'},
  {'echasnovski/mini.comment', version = '*' },
  {'echasnovski/mini.surround', version = '*' },
})
