local status, saga = pcall(require, "lspsaga")
if not status then
    return
end

saga.init_lsp_saga({
    server_filetype_map = {
        typescript = "typescript",
    },
})

function force_signature_help()
    _G.signature_help_forced = true
    vim.lsp.buf.signature_help()
end

local map = vim.api.nvim_buf_set_keymap
map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", { silent = true, noremap = true })
map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
map(0, "n", "K", "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
map(0, "i", "<C-K>", "<cmd>lua force_signature_help()<cr>", { silent = true, noremap = true })
map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", { silent = true, noremap = true })
map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
map(0, "n", "gd", "<cmd>Lspsaga lsp_finder<cr>", { silent = true, noremap = true })
map(0, "n", "gp", "<cmd>Lspsaga peek_definition<cr>", { silent = true, noremap = true })
--map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
--map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
--local opts = { noremap = true, silent = true }
--vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
--vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
--vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
--vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
--vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
--vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
