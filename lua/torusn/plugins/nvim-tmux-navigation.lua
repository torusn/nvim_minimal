return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    require 'nvim-tmux-navigation'.setup {
      disable_when_zoomed = true,       -- defaults to false
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
-- vim: ts=2 sts=2 sw=2 et
