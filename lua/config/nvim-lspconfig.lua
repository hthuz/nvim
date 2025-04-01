
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
-- yay -S cmake-language-server
lspconfig.cmake.setup{}
lspconfig.html.setup {
    capabilities = capabilities,
}
lspconfig.ts_ls.setup {}

lspconfig.cssls.setup {
    capabilities = capabilities,
}
-- pacman -S tailwindcss-language-server
lspconfig.tailwindcss.setup {}
-- pacman -S marksman
lspconfig.marksman.setup {}

-- go install github.com/sqls-server/sqls@latest
lspconfig.sqls.setup {}

-- yay -S jdtls
lspconfig.jdtls.setup {}

lspconfig.r_language_server.setup{}

-- yay -S svls
lspconfig.svls.setup {}
-- lspconfig.solc.setup {}
lspconfig.solidity_ls_nomicfoundation.setup {}
-- npm i -g vscode-langservers-extracted
-- pacman -S vscode-json-languageserver
lspconfig.jsonls.setup {}
-- pacman -S gopls
lspconfig.gopls.setup {}
lspconfig.buf_ls.setup {}
-- npm install -g dockerfile-language-server-nodejs
lspconfig.dockerls.setup {}
-- npm install @microsoft/compose-language-service
lspconfig.docker_compose_language_service.setup{}
-- pacman -S rust-analyzer
-- rustup component add rust-analyzer
lspconfig.rust_analyzer.setup {}
-- cargo install protols
lspconfig.protols.setup{}


