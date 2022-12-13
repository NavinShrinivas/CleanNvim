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

-- Other simple setups :
require("nvim-autopairs").setup {}
require('nvim-autopairs').enable()
-- require'navigator'.setup()
require('cmp_nvim_lsp').setup()
