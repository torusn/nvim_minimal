local client = vim.lsp.start_client {
    name = "gms-lsp",
    cmd = {"/home/torusn/projects/gms-lsp/gms-lsp"},
    -- on_attach = require("torusn.lsp").on_attach,
}

if not client then
    vim.notify "hey the client thing no good"
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})
