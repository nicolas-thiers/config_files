local map = vim.api.nvim_set_keymap

map('n', '<F8>', ':TagbarToggle<CR>', {noremap = true, silent = true})
