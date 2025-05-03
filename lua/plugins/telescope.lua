return {
  -- FZF
  {
    'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' },
     config = function ()
      local configs = require("telescope")
       
      configs.setup(
      {
        defaults = {
          layout_config = {
            horizontal = {
              width = 0.9
            }
          },
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
              ["<A-k>"] = "preview_scrolling_up",
              ["<A-j>"] = "preview_scrolling_down"
            },
            n = {
              ["<A-k>"] = "preview_scrolling_up",
              ["<A-j>"] = "preview_scrolling_down"
            }
          }
        },
        extensions = {
          fzf = {
            fuzzy = true,                  
            override_generic_sorter = true,
            override_file_sorter = true,   
            case_mode = "smart_case",      
          }
        }
      })
      require('telescope').load_extension('fzf')
     end
  },

  -- Treesitter
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
