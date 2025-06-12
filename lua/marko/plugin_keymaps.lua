local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

local telescope_builtin = require('telescope.builtin')

-- Telescope --
keymap('n', '<leader>f', telescope_builtin.find_files, opts)
keymap('n', '<leader>F', telescope_builtin.live_grep, opts)
keymap('n', '<leader><Tab>', telescope_builtin.buffers, opts)

-- Gitsigns --
keymap("n", "<leader>gb", ":Gitsigns blame<CR>", opts)
