return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = {
        'BufReadPost',
        'BufNewFile'
    },
    opts = {
        ensure_installed = {
            'lua',
        },
        ignore_install = { '' },
        auto_install = true,
        matchup = {
            enabled = true
        }
    },
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end,
}
