require('lspkind').init({
   mode = 'symbol_text',
   preset = 'codicons',
   symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
   },
})
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
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)
