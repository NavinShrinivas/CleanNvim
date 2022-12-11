local cmp = require'cmp'
local luasnip = require("luasnip")
if not luasnip then return end

local lsp_symbols = {
   Text = "   (Text) ",
   Method = "   (Method)",
   Function = "   (Function)",
   Constructor = "   (Constructor)",
   Field = " ﴲ  (Field)",
   Variable = "[] (Variable)",
   Class = "   (Class)",
   Interface = " ﰮ  (Interface)",
   Module = "   (Module)",
   Property = " 襁 (Property)",
   Unit = "   (Unit)",
   Value = "   (Value)",
   Enum = " 練 (Enum)",
   Keyword = "   (Keyword)",
   Snippet = "   (Snippet)",
   Color = "   (Color)",
   File = "   (File)",
   Reference = "   (Reference)",
   Folder = "   (Folder)",
   EnumMember = "   (EnumMember)",
   Constant = " ﲀ  (Constant)",
   Struct = " ﳤ  (Struct)",
   Event = "   (Event)",
   Operator = "   (Operator)",
   TypeParameter = "   (TypeParameter)",
}

cmp.setup({
   snippet = {
      expand = function(args)
         luasnip.lsp_expand(args.body)
      end,
   },
   window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
   },
   mapping = {
      ["<cr>"] = cmp.mapping.confirm({select = true}),
      ["<s-tab>"] = cmp.mapping.select_prev_item(),
      ["<tab>"] = cmp.mapping.select_next_item(),
   },
   formatting = {
      format = function(entry, item)
         item.kind = lsp_symbols[item.kind]
         item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[Snippet]",
            neorg = "[Neorg]",
         })[entry.source.name]

         return item
      end,
   },
   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For vsnip users.
      { name = 'path' },
      { name = 'buffer' },
   })
})
