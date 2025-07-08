require'nvim-treesitter.configs'.setup {
  -- List of parsers to install
  ensure_installed = { "lua", "javascript", "typescript", "python", "go", "html", "css", "json" },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

