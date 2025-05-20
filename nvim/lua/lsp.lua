require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	-- A list of servers to automatically install if they're not already installed
	ensure_installed = {
		"lua_ls",
		"pyright",
		"ts_ls",
		"vimls",
		"clangd",
	},
	automatic_installation = true,
})

require("mason-nvim-lint").setup({
	ensure_installed = {
		"eslint_d",
		"vint",
	},
	ignore_install = { "inko", "ruby", "janet", "clj-kondo" },
})

require("mason-conform").setup({
	ensure_installed = {
		"black",
		"fixjson",
		"prettierd",
		"stylua",
		"clang-format",
	},
})

-- get rid of vim global warning
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"vim",
				},
			},
		},
	},
})
