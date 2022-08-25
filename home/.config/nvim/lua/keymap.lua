-- fzf
vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })

-- NERDTree
vim.api.nvim_set_keymap('n', 'T',
    ":NERDTreeFocus<CR>",
    { noremap = true, silent = true })

-- Global
vim.api.nvim_set_keymap('n', 'fh', "<C-w>h", {})
vim.api.nvim_set_keymap('n', 'fl', "<C-w>l", {})
vim.api.nvim_set_keymap('n', 'fk', "<C-w>k", {})
