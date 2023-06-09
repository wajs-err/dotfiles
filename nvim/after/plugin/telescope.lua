local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

vim.keymap.set('n', '<leader>fd', function()
    builtin.find_files({ hidden = true })
end)

vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

-- vim.keymap.set('n', '<leader>fb', require 'telescope'.extensions.file_browser.file_browser, {})

vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})

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
