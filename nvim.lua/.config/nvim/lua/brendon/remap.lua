-- Scrolling
vim.keymap.set('n', '<C-e>', '3<C-e>')
vim.keymap.set('n', '<C-y>', '3<C-y>')


-- Splits
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- Escape
vim.keymap.set('n', '<C-c>', '<Esc>')


-- Keybindings
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>,', ':Buffers<CR>', { silent = true })

vim.keymap.set({'n', 'v'}, '<leader>y', '\"+y')

