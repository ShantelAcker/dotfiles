-- disable netrw at the very start of your init.lua for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("plugins")
require("lsp")
require("explorer")
require("colorscheme")