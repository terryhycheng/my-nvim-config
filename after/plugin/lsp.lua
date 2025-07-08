local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Mason setup
require('mason').setup({
    ensure_installed = { "delve" }
})
require('mason-lspconfig').setup({
    handlers = {
        lsp.default_setup,
    },
    ensure_installed = { "gopls" }
})

local cmp = require('cmp')
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
	})
})

lsp.setup()
