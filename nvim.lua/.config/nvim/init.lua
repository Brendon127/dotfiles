vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.copyindent = true

vim.opt.wrap = false

vim.opt.relativenumber = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.updatetime = 100



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
vim.keymap.set('n', '<leader>op', ':NERDTreeToggle<CR>')

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "scrooloose/nerdtree",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    { "nxstynate/oneDarkPro.nvim", priority = 1000 },
    "airblade/vim-gitgutter"
})


-- NERDTree Config

local NERDTreeShowLineNumbers = 1
local NERDTreeDirArrows = 1
vim.g.NERDTreeWinSize = 30
vim.api.nvim_command('autocmd FileType nerdtree setlocal relativenumber')

-- Color
--
vim.cmd("colorscheme oneDarkPro")
