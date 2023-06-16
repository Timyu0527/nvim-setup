require('nvim_comment').setup({comment_empty = false})
vim.cmd([[
    augroup set-commentstring-ag
        autocmd!
        autocmd BufEnter *.cpp,*.h,*.c,*.hpp :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
        " when you've changed the name of a file opened in a buffer, the file type may have changed
        autocmd BufFilePost *.cpp,*.h,*.c,*.hpp :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    augroup END
]])
