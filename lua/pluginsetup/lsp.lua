
-- maoson, handles all the server installs and setups!
local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason").setup()
require("mason-lspconfig").setup()
