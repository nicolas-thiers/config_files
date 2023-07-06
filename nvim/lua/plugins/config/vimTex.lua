local g = vim.g
local map = vim.api.nvim_set_keymap

g.tex_flavor = 'latex'
g.tex_MultipleCompileFormats = 'pdf,bib,pdf'
g.vimtex_view_method = 'zathura'
map('n', '<F2>', ':!make all %<CR>', {noremap = true, silent = true})
map('n', '<F3>', ':!make bib %<CR>', {noremap = true, silent = true})
