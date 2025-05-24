return {
	{
		-- git
		"tpope/vim-fugitive",
		config = function()
			-- Example: Map <leader>gs to :Git<CR>
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gs",
				":Git status<CR>",
				{ noremap = true, silent = true, desc = "git [S]tatus" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>ga",
				":Git add .<CR>",
				{ noremap = true, silent = true, desc = "git [A]dd ." }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gcm",
				":Git commit<CR>",
				{ noremap = true, silent = true, desc = "git [C]ommit [M]essage" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gp",
				":Git push --force-with-lease<CR>",
				{ noremap = true, silent = true, desc = "git [P]ush" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gl",
				":Git pull<CR>",
				{ noremap = true, silent = true, desc = "git pu[L]l" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gb",
				":Git branch<CR>",
				{ noremap = true, silent = true, desc = "git [B]ranch" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gcb",
				[[:lua local branch = vim.fn.input('Branch name: ') branch = string.gsub(branch, '%s+', '-') if branch ~= '' then vim.cmd('Git checkout -b ' .. branch) end<CR>]],
				{ noremap = true, silent = true, desc = "git [C]heckout new [B]ranch" }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gco",
				":Git checkout ",
				{ noremap = true, silent = true, desc = "git [C]heck[O]out" }
			)
		end,
	},
}
