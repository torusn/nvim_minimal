return {
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
      pattern = [[.*<(KEYWORDS)\s*]],     -- match without colon. probably triggers false positives
      exclude = { "json", "markdown" }
    }
  }
}
-- vim: ts=2 sts=2 sw=2 et
