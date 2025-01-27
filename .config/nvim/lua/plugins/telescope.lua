return {
	{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
	local telescope = require('telescope')
	telescope.setup({})
        local builtin = require("telescope.builtin")
	 -- Find files including git ignored
        vim.keymap.set('n', '<leader>fa', function()
            builtin.find_files({ no_ignore = true })
        end, {})        
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
    end

	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
				extensions = {
			["ui-select"] = {
			require("telescope.themes").get_dropdown {
			}
			}
				}
			})
		require("telescope").load_extension("ui-select")
		end
	}

}

