-- nerdtree keybinds
vim.keymap.set('n', '<leader>n', ":NeoTreeShowToggle<cr>")

-- splits keybinds
vim.keymap.set('n', "<leader>s", ":split <CR>")
vim.keymap.set('n', "<leader>vs", ":vsplit <CR>")
vim.keymap.set('n', "<C-Up>", require("smart-splits").resize_up)
vim.keymap.set('n', "<C-Down>", require("smart-splits").resize_down)
vim.keymap.set('n', "<C-Left>", require("smart-splits").resize_left)
vim.keymap.set('n', "<C-Right>", require("smart-splits").resize_right)

-- Buffer keybinds
vim.keymap.set('n', "<leader>[", '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', "<leader>]", '<Cmd>BufferNext<CR>')
vim.keymap.set('n', "<leader>x", '<Cmd>bd<CR>')

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Comment keybinds
vim.keymap.set('n', "<leader>cc", "<cmd> lua require('Comment.api').toggle.linewise.current() <CR>")
vim.keymap.set('v', "<leader>cc", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")

-- LSP keybids :
vim.keymap.set('n', "<leader>la", "<esc><cmd>:CodeActions<CR>")
vim.keymap.set('n', "<leader>lr", "<esc><cmd>:References<CR>")
vim.keymap.set('n', "<leader>lf", "<esc><cmd>lua vim.lsp.buf.format()<CR>")
vim.keymap.set('n', "<leader>ld", "<esc><cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set('n', "<leader>lD", "<esc><cmd>:Diagnostics<CR>")
vim.keymap.set('n', "<leader>ls", "<esc><cmd>lua vim.lsp.buf.signature_help()<CR>")
vim.keymap.set('n', "<leader>lh", "<esc><cmd> lua vim.lsp.buf.hover()<CR> ")
