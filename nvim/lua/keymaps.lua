-- ----------------------------------
-- This file contains all global keymaps
--  See `:help vim.keymap.set()`
-- ----------------------------------

-- Clear search highlight on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Disable the F1 help keymap
vim.api.nvim_set_keymap("n", "<F1>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F1>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<F1>", "<Nop>", { noremap = true, silent = true })

-- Big jumps already exist in vim: C-d and C-u (<page> up and down) and C-f C-b (forward and back of 30 lines at a time)
-- -- Bigger jumps (see alacritty.toml in the keyboard section) - this is control+shift+j|k
-- vim.keymap.set({ "n", "v" }, "♠", "10j", { noremap = true, silent = true })
-- vim.keymap.set({ "n", "v" }, "♡", "10k", { noremap = true, silent = true })

-- Set keymaps for tab and shift-tab in selection mode but keep selection active
vim.keymap.set("v", ">", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent selection" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>p", ":w | sp | resize 15 | term python % <cr>", { desc = "Run python on current file" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Toggle between relative and hybrid line numbers
vim.api.nvim_set_keymap("n", "<leader>N", ":lua ToggleLineNumbers()<CR>", { noremap = true, silent = true })

function ToggleLineNumbers()
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
		vim.wo.number = true
	end
end
