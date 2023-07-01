
local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true)
            }
        }
    }

}

lspconfig.bashls.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.clangd.setup {}
lspconfig.html.setup {
    capabilities = capabilities,
}
lspconfig.tsserver.setup {}

lspconfig.cssls.setup {
    capabilities = capabilities,
}
lspconfig.tailwindcss.setup {}
lspconfig.marksman.setup {}



