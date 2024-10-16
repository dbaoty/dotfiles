-- lualine.lua

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        options = {
            theme = "gruvbox-material",
            section_separators = { left = '', right = '' },
            component_separators = { left = '', right = '' },
        },

        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {
                {
                    'filename',
                    path = 1,
                    shortening_target = 40,
                },
            },
            lualine_x = {'encoding', 'fileformat', { 'filetype', icon_only = true }},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },

        winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {
                -- {
                --     'buffers',
                --     show_filename_only = true,
                --     show_modified_status = true,
                --     filetype_names = {
                --         TelescopePrompt = "Telescope",
                --     },
                --     symbols = {
                --         alternate_file = '',
                --     }
                -- },
            },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
        },

        inactive_winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
        }
    }
}
