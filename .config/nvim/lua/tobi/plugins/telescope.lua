return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup {
			defaults = {
				path_display = { "filename_first" },
				sorting_strategy = "ascending",
				layout_config = {
					prompt_position = "top",
					width = 0.75,
					height = 0.75,
				},
			}
		}
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>fr', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>cs', builtin.help_tags, {})
	end
}
