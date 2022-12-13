-- web-dev-icons :
require("pluginsetup/devicons")

-- lualine :
require("pluginsetup/lualine")

-- neotree
require("pluginsetup/neotree")

-- smart-splits
require("pluginsetup/smartsplit")

-- barbar
require("pluginsetup/barbar")

-- lsp
require("pluginsetup/lsp")

-- completion framework
require("pluginsetup/cmp")

-- telescope setup, only for fzf keybinds cus ugh muscle memory
require("pluginsetup/telescope")


-- Other simple setups, without seperate file:
require("nvim-autopairs").setup {}
require('nvim-autopairs').enable()
require('cmp_nvim_lsp').setup()
require('nvim-lightbulb').setup({autocmd = {enabled = true}})
require"fidget".setup{}
