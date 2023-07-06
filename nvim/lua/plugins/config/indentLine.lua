local g = vim.g
local map = vim.api.nvim_set_keymap

g.indentLine_color_term = 239
g.indentLine_bgcolor_term = 202
g.indentLine_bgcolor_gui = '#FF5F00'
g.indentLine_setColors = 0
g.indentLine_char_list = {'|', '¦', '┆', '┊'}
g.indentLine_concealcursor = ''
g.indentLine_conceallevel = 1
map('n', '<C-i>', ':IndentLinesToggle<CR>', {noremap = true, silent = true})
