vim.g.mapleader = " "

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser<CR>')

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gof", "<cmd>CellularAutomaton game_of_life<CR>")

vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<CR>")

vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>n", "<C-w><Right>")
vim.keymap.set("n", "<leader>p", "<C-w><Left>")
