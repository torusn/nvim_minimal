-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
--
-- vim.keymap.set("n", "<leader>a", mark.add_file)
-- vim.keymap.set("n", "<S-e>", ui.toggle_quick_menu)
-- vim.keymap.set("n", "<S-h>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<S-j>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<S-k>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<S-l>", function() ui.nav_file(4) end)

local harpoon = require('harpoon')
harpoon:setup({})

-- basic keymaps
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<S-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<S-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<S-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<S-s>", function() harpoon:list():select(4) end)

-- disable if using telescope
vim.keymap.set("n", "<S-e>", function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
--
-- vim.keymap.set("n", "<S-e>", function() toggle_telescope(harpoon:list()) end,
--     { desc = "Open harpoon window" })
