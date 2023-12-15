local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set('n', '<leader>q', ':q<CR>')
keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>й', ':q<CR>')
keymap.set('n', '<leader>ц', ':w<CR>')

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set('n', '<S-Up>', ':m-2<CR>==')
keymap.set('n', '<S-Down>', ':m+1<CR>==')

keymap.set('i', '<S-Up>', '<Esc>:m-2<CR>==gi')
keymap.set('i', '<S-Down>', '<Esc>:m+1<CR>==gi')

keymap.set('v', '<S-Up>', ':m\'<-2<CR>gv=gv')
keymap.set('v', '<S-Down>', ':m\'>+1<CR>gv=gv')

keymap.set('n', '<C-j>', '<C-w>w')
keymap.set('n', '<C-k>', '<C-w>W')

keymap.set('n', '<C-l>', '<C-w><C->>')
keymap.set('n', '<C-h>', '<C-w><C-<>')
keymap.set('n', '<C-s>', '<C-w><C-x>')


-- -- shift arrow like gui
-- keymap.set("n", "<S-Up>", "v<Up>")
-- keymap.set("n", "<S-Down>", "v<Down>")
-- keymap.set("n", "<S-Left>", "v<Left>")
-- keymap.set("n", "<S-Right>", "v<Right>")
-- keymap.set("v", "<S-Up>", "<Up>")
-- keymap.set("v", "<S-Down>", "<Down>")
-- keymap.set("v", "<S-Left>", "<Left>")
-- keymap.set("v", "<S-Right>", "<Right>")
-- keymap.set("i", "<S-Up>", "<Esc>v<Up>")
-- keymap.set("i", "<S-Down>", "<Esc>v<Down>")
-- keymap.set("i", "<S-Left>", "<Esc>v<Left>")
-- keymap.set("i", "<S-Right>", "<Esc>v<Right>")
--
-- -- copy paste like gui
-- keymap.set("v", "<C-c>", '"+y<Esc>i')
-- keymap.set("v", "<C-x>", '"+d<Esc>i')
-- keymap.set("i", "<C-v>", '"+pi')
-- keymap.set("i", "<C-v>", '<Esc>"+pi', { noremap = true, silent = true })
-- keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
-- keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
-- keymap.set({ "i", "v", "x", "t" }, "<C-a>", "<C-\\><C-n>ggVG", { noremap = true, silent = true })

