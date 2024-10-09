-- todo-comments.lua

return {
    {
        "folke/todo-comments.nvim",
        opts = {
            keys = {
                -- Setup Todo-Comments description for WhichKey
                vim.keymap.set("n", "<leader>s", "",
                    { silent = true, desc = "Todo Keybinds" }),

                vim.keymap.set("n", "<leader>st", ":TodoTelescope<CR>",
                    { silent = true, desc = "List Todos in Telescope"}),
            },
        },
    },
    {
        "nvim-lua/plenary.nvim", lazy = true,
    },
}
