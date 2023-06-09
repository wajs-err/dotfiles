require('Comment').setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<C-_>',
        block = '<C-b>'
    },
    opleader = {
        line = nil,
        block = nil
    },
    extra = {
        above = nil,
        below = nil,
        eol = nil
    },
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    pre_hook = nil,
    post_hook = nil,
})
