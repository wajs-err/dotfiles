local db = require("dashboard")

local color = '#'
for _ = 0, 5 do
    local r = math.random(0, 15)
    if r <= 10 then
        color = color .. string.char(math.random(48, 57))
    else
       color = color .. string.char(math.random(97, 102))
    end
end

vim.api.nvim_set_hl(0, 'Dashboardheader', { fg = color --[['#d39b17' '#9b17d4']] })

-- local files = {}
-- local tmpfile = '/tmp/pokemon'
-- os.execute('pokeget random > '..tmpfile)
-- local f = assert(io.open(tmpfile))
-- local k = 1
-- for line in f:lines() do
--     files[k] = line
--     k = k + 1
-- end
-- f:close()

db.setup({
    theme = 'doom',
    config = {
        header = {
            -- "",
            -- "",
            -- "",
            -- "",
            -- " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            -- " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            -- " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            -- " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            -- " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            -- " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
            -- "",
            -- "",
            -- "",
            -- "",
            -- "",

            -- [[                                                                                   ]],
            -- [[     /\__\         /\  \         /\  \         /\__\          ___        /\__\     ]],
            -- [[    /  |  |       /  \  \       /  \  \       / /  /         /\  \      /  |  |    ]],
            -- [[   / | |  |      / /\ \  \     / /\ \  \     / /  /          \ \  \    / | |  |    ]],
            -- [[  / /| |  |__   /  \~\ \  \   / /  \ \  \   / /__/  ___      /  \__\  / /| |__|__  ]],
            -- [[ / / | | /\__\ / /\ \ \ \__\ / /__/ \ \__\  | |  | /\__\  __/ /\/__/ / / |___ \__\ ]],
            -- [[ \/__| |/ /  / \ \~\ \ \/__/ \ \  \ / /  /  | |  |/ /  / /\/ /  /    \/__/  / /  / ]],
            -- [[     | / /  /   \ \ \ \__\    \ \  / /  /   | |__/ /  /  \  /__/           / /  /  ]],
            -- [[     |  /  /     \ \ \/__/     \ \/ /  /     \____/__/    \ \__\          / /  /   ]],
            -- [[     / /  /       \ \__\        \  /  /                    \/__/         / /  /    ]],
            -- [[     \/__/         \/__/         \/__/                                   \/__/     ]],
            -- [[                                                                                   ]],

            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],

        },
        center = {
            {
                desc = 'Find File                 ',
                desc_hl = 'String',
                key = 'f',
                key_hl = 'Number',
                action = 'Telescope find_files find_command=rg,--hidden,--files'
            },
            {
                desc = 'Recently opened files     ',
                desc_hl = 'String',
                key = 'r',
                key_hl = 'Number',
                action = 'Telescope oldfiles'
            },
            {
                desc = 'File browser              ',
		desc_hl = 'String',
                key = 'b',
                key_hl = 'Number',
                action = "Telescope file_browser",
            },
            {
                desc = 'New file                  ',
                desc_hl = 'String',
                key = 'e',
                key_hl = 'Number',
                action = 'enew',
            },
        },
        footer = {}
    }
})
