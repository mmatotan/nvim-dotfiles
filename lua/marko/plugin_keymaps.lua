local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

local telescope_builtin = require('telescope.builtin')

-- Telescope --
keymap('n', '<leader>f', telescope_builtin.find_files, opts)
keymap('n', '<leader>F', telescope_builtin.live_grep, opts)
keymap('n', '<leader><Tab>', telescope_builtin.buffers, opts)

-- Gitsigns --
keymap("n", "<leader>gb", ":Gitsigns blame<CR>", opts)

-- Harpoon --
local harpoon = require("harpoon")

keymap("n", "<leader>a", function() harpoon:list():add() end)
keymap("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

keymap("n", "<A-1>", function() harpoon:list():select(1) end)
keymap("n", "<leader>2", function() harpoon:list():select(2) end)
keymap("n", "<leader>3", function() harpoon:list():select(3) end)
keymap("n", "<leader>4", function() harpoon:list():select(4) end)

