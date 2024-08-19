vim.g.mapleader = " "
local wk = require("which-key")

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
wk.add({
    {"<C-h>", "<C-w>h", desc="Go Left"},
    {"<C-j>", "<C-w>j", desc="Go Down"},
    {"<C-k>", "<C-w>k", desc="Go Up"},
    {"<C-l>", "<C-w>l", desc="Go Right"},
})

wk.add({
    {"jk", "<ESC>", mode = "i", desc="Switch to normal mode"}
})

local telescope_builtin = require('telescope.builtin')
wk.add({
    {"<leader>f", group = "Find"},
    {"<leader>ff", telescope_builtin.find_files, desc = "Files"},
    {"<leader>fb", telescope_builtin.find_buffers, desc = "Buffers"},
    {"<leader>fh", telescope_builtin.help_tags, desc = "Help Tags"},
})

wk.add({
    {"<leader>b", ":Git blame<CR>", desc="Git Blame"}
})