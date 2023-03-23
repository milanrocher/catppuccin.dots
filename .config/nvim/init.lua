vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.vimtex_view_method = "general"

require('configs')
require('plugins')
require('remaps')
require("nvim-tree").setup()
require('lualine').setup {
  options = {
    theme = 'auto'
  }
}
require('telescope').setup()
require('telescope').load_extension 'file_browser'
require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "help", "javascript", "c", "lua", "vim", "java" },
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    additional_vim_regex_highlighting = false,
  },
}

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()
