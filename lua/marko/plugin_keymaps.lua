local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

local telescope_builtin = require('telescope.builtin')

-- Telescope --
keymap('n', '<leader>f', telescope_builtin.find_files, opts)
keymap('n', '<leader>F', telescope_builtin.live_grep, opts)
keymap('n', '<leader>r', telescope_builtin.resume, opts)
keymap('n', '<leader><Tab>', telescope_builtin.buffers, opts)

-- Gitsigns --
keymap("n", "<leader>gb", ":Gitsigns blame<CR>", opts)

-- Harpoon --
local harpoon = require("harpoon")

keymap("n", "<A-a>", function() harpoon:list():add() end)
keymap("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
keymap("n", "<A-1>", function() harpoon:list():select(1) end)
keymap("n", "<A-2>", function() harpoon:list():select(2) end)
keymap("n", "<A-3>", function() harpoon:list():select(3) end)
keymap("n", "<A-4>", function() harpoon:list():select(4) end)
keymap("n", "<A-5>", function() harpoon:list():select(5) end)
keymap("n", "<A-6>", function() harpoon:list():select(6) end)
keymap("n", "<A-7>", function() harpoon:list():select(7) end)
keymap("n", "<A-8>", function() harpoon:list():select(8) end)
keymap("n", "<A-9>", function() harpoon:list():select(9) end)

