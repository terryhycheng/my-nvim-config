require'nvim-treesitter.configs'.setup {
    -- List of parsers to install
    ensure_installed = { 
        "lua",
        "tsx", 
        "markdown", 
        "javascript", 
        "typescript", 
        "python", 
        "go", 
        "html", 
        "dockerfile",
        "bash",
        "css", 
        "json" 
    },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

