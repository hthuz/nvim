
local lspconfig = require('lspconfig')


-- pacman -S pyright
lspconfig.pyright.setup {}
-- lspconfig.pylsp.setup{}
-- pacman -S lua-language-server
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
                library = vim.api.nvim_get_runtime_file("",true),
                checkThirdParty = false,
            }
        }
    }

}
-- pacman -S bash-language-server
lspconfig.bashls.setup{}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- pacman -S clangd
lspconfig.clangd.setup {}
lspconfig.html.setup {
    capabilities = capabilities,
}
lspconfig.tsserver.setup {}

lspconfig.cssls.setup {
    capabilities = capabilities,
}
-- pacman -S tailwindcss-language-server
lspconfig.tailwindcss.setup {}
-- pacman -S marksman
lspconfig.marksman.setup {}

lspconfig.jdtls.setup {}

lspconfig.r_language_server.setup{}

lspconfig.svls.setup {}
-- lspconfig.solc.setup {}
lspconfig.solidity_ls_nomicfoundation.setup {}
-- npm i -g vscode-langservers-extracted
lspconfig.jsonls.setup {}
-- pacman -S gopls
lspconfig.gopls.setup {}
-- go install github.com/bufbuild/buf-language-server/cmd/bufls@latest
lspconfig.bufls.setup {}
-- npm install -g dockerfile-language-server-nodejs
lspconfig.dockerls.setup {}
-- npm install @microsoft/compose-language-service
lspconfig.docker_compose_language_service.setup{}


