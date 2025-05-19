-- disable netrw at the very start of your init.lua for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("plugins")
require("options")
require("lsp")
require("formatter")
require("explorer")
require("colorscheme")
require("keymaps")
