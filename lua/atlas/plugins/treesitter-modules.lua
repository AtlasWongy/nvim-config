return {
    "MeanderingProgrammer/treesitter-modules.nvim",
    config = function()
    require("treesitter-modules").setup({
        ensure_installed = { "python", "c_sharp", "gdscript", "c", "lua", "vim", "vimdoc", "query" },
        auto_installed = true,
        highlight = {
            enable = true
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<Leader>ss",
                node_incremental = "<Leader>si",
                scope_incremental = "<Leader>sc",
                node_decremental = "<Leadersd",
            }
        },
        textobjects = {
            select = {
            },
        },
    })
    end,
}
