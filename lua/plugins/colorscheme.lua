return {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        local everforest = require("everforest")
        everforest.setup({
            background = "medium",
            transparent_background_level = 1,
            italics = true,
            disable_italic_comments = false,
        })
        vim.cmd("colorscheme everforest")
        vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
    end
}
