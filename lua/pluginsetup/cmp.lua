vim.opt.completeopt = { "menuone", "noselect", "menu" }

local cmp = require("cmp")

local has_words_before = function()
   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
   return col ~= 0
   and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local kind_icons = {
   Text = "",
   Method = "",
   Function = "",
   Constructor = "",
   Field = "",
   Variable = "",
   Class = "ﴯ",
   Interface = "",
   Module = "",
   Property = "ﰠ",
   Unit = "",
   Value = "",
   Enum = "",
   Keyword = "",
   Snippet = "",
   Color = "",
   File = "",
   Reference = "",
   Folder = "",
   EnumMember = "",
   Constant = "",
   Struct = "",
   Event = "",
   Operator = "",
   TypeParameter = "",
}

cmp.setup({
   snippet = {
      expand = function(args)
         require('luasnip').lsp_expand(args.body)
      end,
   },
   window = {
      documentation = cmp.config.window.bordered(),
      completion = cmp.config.window.bordered(),
   },
   formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, item)
         -- return special icon for cmdline completion
         if entry.source.name == "cmdline" then
            item.kind = ""
            item.menu = "Vim"
            return item
         elseif entry.source.name == "nvim_lsp_signature_help" then
            item.kind = "Property"
         end
         item.menu = item.kind
         item.kind = kind_icons[item.kind]
         return item
      end,
   },
   mapping = {
      ["<cr>"] = cmp.mapping.confirm({select = true}),
      ["<s-tab>"] = cmp.mapping.select_prev_item(),
      ["<tab>"] = cmp.mapping.select_next_item(),
   },
   sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'buffer' },
   },
   preselect = cmp.PreselectMode.None,
})
