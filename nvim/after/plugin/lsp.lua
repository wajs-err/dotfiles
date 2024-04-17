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
        -- "--enable-config",
        "--header-insertion=never",
        "--function-arg-placeholders=0"
    },
    -- commands = {
    --     ClangdSwitchSourceHeader = {
    --         function()
    --             local bufnr = require'lspconfig'.util.validate_bufnr(0)
    --             local params = { uri = vim.uri_from_bufnr(bufnr) }
    --             vim.lsp.buf_request(bufnr, 'textDocument/switchSourceHeader', params, function(err, _, result)
    --                 if err then error(tostring(err)) end
    --                 if not result then print ("Corresponding file can’t be determined") return end
    --                 vim.api.nvim_command("edit "..vim.uri_to_fname(result))
    --                 vim.api.nvim_command("bdelete "..tostring(bufnr))
    --             end)
    --         end
    --     },
    -- }
}

lsp.setup()

vim.keymap.set("n", "<leader>s", ":w<CR>:ClangdSwitchSourceHeader<CR>")
