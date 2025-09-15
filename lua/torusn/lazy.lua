require("lazy").setup({
    require 'torusn.plugins.telescope',
    require 'torusn.plugins.mellow',
    require 'torusn.plugins.lsp',
    require 'torusn.plugins.blink',
    require 'torusn.plugins.nvim-tmux-navigation',
    require 'torusn.plugins.todo-comments',
    require 'torusn.plugins.treesitter',
    require 'torusn.plugins.harpoon',
    require 'torusn.plugins.undotree',

    { 'tpope/vim-fugitive' },
    { 'ray-x/go.nvim' },
    { 'ray-x/guihua.lua' },
    { 'echasnovski/mini.comment',  version = '*' },
    { 'echasnovski/mini.surround', version = '*' },
  },
  {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  })
-- vim: ts=2 sts=2 sw=2 et
