local telescope = require 'telescope'
local builtin = require('telescope.builtin')

telescope.setup {
    pickers = {
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
        },
    },
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- find all of words under cursor
vim.keymap.set('n', '<leader>fw', function()
    local word = vim.fn.expand("<cword>")

    builtin.grep_string({ search = word })
end)

-- find all of words under cursor delimited by whitespace
vim.keymap.set('n', '<leader>fW', function()
    local word = vim.fn.expand("<cWORD>")

    builtin.grep_string({ search = word })
end)
