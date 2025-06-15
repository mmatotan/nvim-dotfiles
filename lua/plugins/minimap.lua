return {
  {
    "gorbit99/codewindow.nvim",
    config = function()
      local codewindow = require('codewindow')
      codewindow.setup({
        use_lsp = true,
        use_treesitter = true,
        use_git = true,
      })
      codewindow.apply_default_keybinds()
    end,
  },
}

