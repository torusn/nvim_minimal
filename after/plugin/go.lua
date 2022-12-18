require("go").setup({
    max_line_len = 110,
    test_runner = "go",
    build_tags = "testing",
    run_in_floaterm = false,
    gotests_template = "testify",
    dap_debug = true,
    dap_debug_gui = true,
})

require('go.format').goimport()
-- generics
-- FIXME how to pass args?
-- vim.keymap.set('n', '<leader>oc', vim.cmd.GoCoverage -t testing <CR>", "Show Coverage" },
vim.keymap.set('n', '<leader>oD', vim.cmd.GoDoc)
vim.keymap.set('n', '<leader>ol', vim.cmd.GoLint)
vim.keymap.set('n', '<leader>oo', vim.cmd.GoPkgOutline)
vim.keymap.set('n', '<leader>oi', vim.cmd.GoImport)
vim.keymap.set('n', '<leader>oI', vim.cmd.GoImpl)
vim.keymap.set('n', '<leader>oj', vim.cmd.GoAlt)
vim.keymap.set('n', '<leader>oe', vim.cmd.GoIfErr)
-- testing
vim.keymap.set('n', '<leader>otp', vim.cmd.GoTestPkg)
vim.keymap.set('n', '<leader>otf', vim.cmd.GoTestFunc)
vim.keymap.set('n', '<leader>otF', vim.cmd.GoTestFile)
-- FIXME how to pass args?
-- vim.keymap.set('n', '<leader>ota', vim.cmd.GoAddTest('template'))

-- fill
vim.keymap.set('n', '<leader>ofs', vim.cmd.GoFillStruct)
vim.keymap.set('n', '<leader>ofw', vim.cmd.GoFillSwitch)

-- debug
vim.keymap.set('n', '<leader>odl', vim.cmd.GoDebug)
vim.keymap.set('n', '<leader>odb', vim.cmd.GoBreakToggle)
vim.keymap.set('n', '<leader>odB', vim.cmd.BreakCondition)
vim.keymap.set('n', '<leader>odr', vim.cmd.ReplToggle)
vim.keymap.set('n', '<leader>odq', vim.cmd.GoDbgStop)
vim.keymap.set('n', '<leader>odk', vim.cmd.GoDbgKeys)
vim.keymap.set('n', '<leader>ods', vim.cmd.GoDbgStep)
vim.keymap.set('n', '<leader>odc', vim.cmd.GoDbgContinue)
