local lsp = require('lsp-zero').preset({})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        "/usr/bin/clangd",
        "--enable-config",
        "--header-insertion=never",
        "--function-arg-placeholders=0"
    }
}

lsp.setup()

vim.keymap.set("n", "<leader>s", ":w<CR>:ClangdSwitchSourceHeader<CR>")
