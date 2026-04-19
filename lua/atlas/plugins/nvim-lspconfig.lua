return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                   disableOrganizationImports = true,
                   analysis = {
                        autoImportCompletions = false
                   }
                }
            }
        })
        vim.lsp.config("ruff", {
            on_attach = function(client, bufnr)
                client.server_capabilities.hoverProvider = false
            end,
        })
    end,
}
