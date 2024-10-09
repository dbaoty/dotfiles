-- telescope.lua

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            {
                "nvim-lua/plenary.nvim",
                lazy = true,
            },
        },
        opts = {
            keys = {
                -- setup Telescope description for WhichKey
                vim.keymap.set("n", "<leader>t", "",
                    { silent = true, desc = "Telescope Keybinds" }),

                -- vim pickers
                vim.keymap.set("n", "<leader>tb", ":Telescope buffers<CR>",
                    { silent = true, desc = "List Buffers"}),
                vim.keymap.set("n", "<leader>th", ":Telescope help_tags<CR>",
                    { silent = true, desc = "Help Tags" }),

                -- file pickers
                vim.keymap.set("n", "<leader>td", ":Telescope find_files<CR>",
                    { silent = true, desc = "Find Files" }),
                vim.keymap.set("n", "<leader>tg", ":Telescope git_files<CR>",
                    { silent = true, desc = "Git Files" }),
                vim.keymap.set("n", "<leader>tG", ":Telescope live_grep<CR>",
                    { silent = true, desc = "Live Grep"}),
                vim.keymap.set("n", "<leader>ts", ":Telescope grep_string<CR>",
                    { silent = true, desc = "Grep String"}),

                -- Neovim LSP pickers
                vim.keymap.set("n", "<leader>td", ":Telescope diagnostics bufnr=0<CR>",
                    { silent = true, desc = "LSP Diagnostics (Document)"}),
                vim.keymap.set("n", "<leader>tD", ":Telescope diagnostics<CR>",
                    { silent = true, desc = "LSP Diagnostics (Workspace)"}),
            },
        }
    },
}
