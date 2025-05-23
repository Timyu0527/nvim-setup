-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
        'morhetz/gruvbox',
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

    use({'neoclide/coc.nvim', branch = 'release'})

    use('kana/vim-textobj-user')
    use('kana/vim-textobj-entire')
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')
    use('preservim/nerdtree')
    use('ryanoasis/vim-devicons')
    use('terrortylor/nvim-comment')
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup({
            size = 13,
            open_mapping = [[<c-\>]],
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            persist_size = true,
            direction = 'horizontal'
        })
    end}
end)
