-- gruvbox-material.lua

return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_background = "hard"
        vim.g.gruvbox_material_foreground = "material"
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_enable_bold = true
        vim.g.gruvbox_material_transparent_background = 1 -- 0, 1 or 2

        vim.g.gruvbox_material_diagnostic_text_highlight = 1
        vim.g.gruvbox_material_diagnostic_line_highlight = 1
        vim.g.gruvbox_material_diagnostic_virtual_text = "colored" -- grey, colored or highlighted

        vim.g.gruvbox_material_inlay_hints_background = "dimmed" -- none or dimmed

        vim.cmd.colorscheme("gruvbox-material")
    end
}
