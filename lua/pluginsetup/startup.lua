local settings = {
   -- every line should be same width without escaped \
   header = {
      type = "text",
      align = "center",
      fold_section = false,
      title = "Header",
      margin = 5,
      content = require("startup.headers").neovim_logo_header,
      highlight = "Statement",
      default_color = "",
      oldfiles_amount = 0,
   },
   header_2 = {
      type = "text",
      oldfiles_directory = false,
      align = "center",
      fold_section = false,
      title = "Quote",
      margin = 5,
      content = require("startup.functions").quote(),
      highlight = "Constant",
      default_color = "",
      oldfiles_amount = 0,
   },
 clock = {
        type = "text",
        content = function()
            local clock = " " .. os.date("%H:%M")
            local date = " " .. os.date("%d-%m-%y")
            return { clock, date }
        end,
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "TSString",
        default_color = "#FFFFFF",
        oldfiles_amount = 10,
    },
   parts = {
      "header",
      "clock",
      "header_2",
   },
}
return settings
