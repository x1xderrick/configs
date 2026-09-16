return {
	{
		'nvim-telescope/telescope.nvim', version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- optional but recommended
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install'
			},
		},
		config = function()
			vim.keymap.set("n", "<leader>fd", require('telescope.builtin').find_files)
			vim.keymap.set("n", "<leader>en", function()
				require('telescope.builtin').find_files {
					cwd = vim.fn.stdpath("config")
				}
			end)
		end
	}
}
