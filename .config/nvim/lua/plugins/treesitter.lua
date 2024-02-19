return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- keymap for neo-tree
        local configs = require("nvim-treesitter.configs")
        configs.setup({
                        auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
        })
    end
}
