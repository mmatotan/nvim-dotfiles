return {
  "kelly-lin/ranger.nvim",
  config = function()
  require("ranger-nvim").setup({ 
      replace_netrw = true,
      ui = {
        border = "rounded",
        height = 0.75,
        width = 0.75
      }
    })
  vim.keymap.set("n", "<leader>e", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })
  end,
}
