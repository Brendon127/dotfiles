return {
    "scrooloose/nerdtree",
    config = function() 

    local NERDTreeShowLineNumbers = 1
    local NERDTreeDirArrows = 1
    vim.g.NERDTreeWinSize = 30
    vim.api.nvim_command('autocmd FileType nerdtree setlocal relativenumber')


    vim.keymap.set('n', '<leader>op', ':NERDTreeToggle<CR>')

    end
}
