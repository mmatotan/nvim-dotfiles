require "marko.options"
require "marko.keymaps"
require "marko.plugins"
require "marko.plugin_keymaps"

vim.cmd[[colorscheme nord]]

vim.filetype.add({
  pattern = {
    ['%.gitlab%-ci%.ya?ml'] = 'yaml.gitlab',
  },
})

