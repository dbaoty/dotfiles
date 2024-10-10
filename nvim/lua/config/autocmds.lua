-- autocmds.lua

local function augroup(name)
    return vim.api.nvim_create_augroup("nvim_" .. name, { clear = true })
end

-- buffer-local 2 space indent for patterned filetypes
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    group = augroup("filetype_indent"),
    pattern = { "*.css" },
    command = ":setlocal tabstop=2 softtabstop=2 shiftwidth=2",
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- adjust splits on window resize
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup("resize_splits"),
    callback = function()
        local current_tab = vim.fn.tabpagenr()
        vim.cmd("tabdo wincmd =")
        vim.cmd("tabnext " .. current_tab)
    end,
})

-- goto last location when opening buffer
vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup("last_loc"),
    callback = function(event)
        local exclude = { "gitcommit" }
        local buf = event.buf
        if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].nvim_last_loc then
            return
        end
        vim.b[buf].nvim_last_loc = true
        local mark = vim.api.nvim_buf_get_mark(buf, "\"")
        local lcount = vim.api.nvim_buf_line_count(buf)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- line wrap and spell check the appropriate file types
vim.api.nvim_create_autocmd("FileType", {
    group = augroup("wrap_spell"),
    pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end,
})

-- whitespace format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup("whitespace_format"),
    pattern = "*",
    command = "%s/\\s\\+$//e"
})


-- LSP configs
-- vim.api.nvim_create_autocmd("LspAttach", {
--     callback = function(args)
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--         if client.supports_method('textDocument/implementation') then
--             -- Create keymap for vim.lsp.buf.implementation
--         end
--
--         if client.supports_method('textDocument/completion') then
--             -- enables autocompletion
--             -- vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--         end
--     end
-- })

