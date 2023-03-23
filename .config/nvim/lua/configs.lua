-- Indent lines
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

-- Display Hybrid Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Set Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Wrap lines
vim.opt.wrap = true

-- Searching
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Spelling
vim.opt.spell = true

-- Visuals
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "number"
vim.opt.colorcolumn = "80"
vim.cmd.colorscheme "catppuccin-macchiato"
