-- Remap Leader and Local Leader
-- These are set in config/lazy.lua
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"
-- Normal Mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)		-- Open File Explorer
vim.keymap.set("n", "<leader><leader>", vim.cmd.w)	-- Save
vim.keymap.set("n", "<C-l>", "$")					-- Go to end of the line in normal mode
vim.keymap.set("n", "<C-h>", "^")					-- Go to the first non-white space character of the line in normal mode
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP declaration" })
vim.keymap.set({ "n", "v" }, "grf", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "LSP format" })
-- Insert Mode
vim.keymap.set("i", "<C-j>", "<esc>")				-- Exit insert mode
-- Visual Mode
vim.keymap.set("v", "<C-j>", "<esc>")				-- Exit visual mode
vim.keymap.set("v", "<C-l>", "$")					-- Go to end of the line in visual mode
vim.keymap.set("v", "<C-h>", "^")					-- Go to the first non-white space character of the line in visual mode


vim.keymap.set('n', '<space>d', '<cmd>lua vim.diagnostic.open_float(nil, { focus = false })<CR>', { noremap = true, silent = true })
