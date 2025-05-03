return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' },
     config = function ()
      local configs = require("telescope")
       
      configs.setup({
        defaults = {
          mappings = {
            i = {}
          }
        }
      })

     end
  },
  {
     'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
      config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "ruby" },
          sync_install = false,
          auto_install = true,
         
          highlight = { enable = true },
          indent = { enable = true },  
        })
      end
  }
}
