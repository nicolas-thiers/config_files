local g = vim.g
local map = vim.api.nvim_set_keymap

g.NERDTreeDirArrowExpandable = '+'
g.NERDTreeDirArrowCollapsible = '-'
map('n', '<C-o>', ':NERDTreeToggle<CR>', { noremap = false, silent = true })
map('n', '<C-f>', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
map('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })

