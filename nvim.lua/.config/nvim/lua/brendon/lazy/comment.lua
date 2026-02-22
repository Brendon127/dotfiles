return {
    'numToStr/Comment.nvim',
    config = function()
        local ft = require('Comment.ft')
        ft
        .set('tf', '# %s')
        .set('javascript', {'//%s', '/*%s*/'})


    end
}

