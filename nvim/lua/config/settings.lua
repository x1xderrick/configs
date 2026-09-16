vim.opt.number = true			-- Set line numbers
vim.opt.relativenumber = true		-- Set relative line numbers
vim.opt.clipboard = "unnamedplus"	-- Use system clipboard

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Use tabs with width of 4
vim.opt.expandtab = false	-- Do NOT insert spaces as tabs
vim.opt.tabstop = 4		-- For visual appearance of tab characters
vim.opt.softtabstop = 4		-- For max jump distance of manual tabs
vim.opt.shiftwidth = 0		-- Use tabs indentation

