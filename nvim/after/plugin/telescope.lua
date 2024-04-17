local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- vim.keymap.set('n', '<leader>fb', require 'telescope'.extensions.file_browser.file_browser, {})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fd', function()
    builtin.find_files({ hidden = true })
end)
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>gs', ':Telescope grep_string<CR>', {})
vim.keymap.set('n', '<leader>lg', ':Telescope live_grep<CR>', {})

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fd', function()
    builtin.find_files({ hidden = true })
end)
vim.keymap.set('n', 'fr', builtin.oldfiles, {})
vim.keymap.set('n', 'fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})
vim.keymap.set('n', 'fg', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', 'gs', ':Telescope grep_string<CR>', {})
vim.keymap.set('n', 'gp', ':Telescope live_grep<CR>', {})

vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, {})

require('telescope').setup({
    defaults = {
        prompt_prefix = ' > ',
        initial_mode = 'insert',
        sorting_strategy = 'ascending',
        mappings = {
            i = {
                ['<ESC>'] = actions.close,
                ['<TAB>'] = actions.move_selection_next,
                ['S-<TAB>'] = actions.move_selection_previous,
            },
        },
    },
    extensions = {
        file_browser = {
            hidden = { file_browser = true, folder_browser = true },
        },
    },
})

require('telescope').load_extension('file_browser')
-- require('telescope').load_extension('live_grep')
