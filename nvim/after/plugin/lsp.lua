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

require('lspconfig').jedi_language_server.setup({
    -- root_dir = function()
    --     return '/home/_wajs_err_'
    -- end,
    init_options = {
        workspace = {
            extraPaths = {'/home/_wajs_err_/.local/bin'}
        }
    }
})

lsp.setup()
