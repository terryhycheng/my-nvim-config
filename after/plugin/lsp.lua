local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Mason setup
require("mason").setup({
	ensure_installed = { "delve" },
})
require("mason-lspconfig").setup({
	handlers = {
		lsp.default_setup,
	},
	ensure_installed = { "gopls" },
})
require("mason-null-ls").setup({
	ensure_installed = {
		"goimports",
		"prettier",
		"shfmt",
		"stylua",
		"ts-standard",
		"xmlformatter",
		"yamlfix",
		"yamlfmt",
	},
	automatic_installation = true,
})

local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		-- JS/TS/HTML/CSS
		formatting.prettier,
		formatting.ts_standard, -- JavaScript/TypeScript standard

		-- Lua
		formatting.stylua,

		-- Python (if you ever use it)
		-- formatting.black,

		-- Go
		formatting.goimports,
		formatting.shfmt,

		-- YAML
		formatting.yamlfmt,
		formatting.yamlfix,

		-- XML
		formatting.xmlformat,
	},
})

local cmp = require("cmp")
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
	}),
})

lsp.setup()
