return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		options = {
			mode = "buffers",
			number = "ordinal",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
			indicator = {
				icon = '▎', -- this should be omitted if indicator style is not 'icon'
				-- style = 'icon' | 'underline' | 'none',
				style = "icon",
			},
			show_buffer_close_icons = false,
			show_close_icon = false,
			enforce_regular_tabs = true,
			show_duplicate_prefix = false,
			tab_size = 16,
			padding = 0,
			separator_style = "thick",
			vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "tl", ":BufferLineCycleNext<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "th", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true }),

			-- vim.api.nvim_set_keymap("n", "tc", ":tabclose<CR>", { noremap = true, silent = true }),
			-- vim.api.nvim_set_keymap("n", "to", ":tabonly<CR>", { noremap = true, silent = true }),

			vim.api.nvim_set_keymap("n", "tw", ":bdelete %<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "tp", ":BufferLinePickClose<CR>", { noremap = true, silent = true }),
			vim.api.nvim_set_keymap("n", "to", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>",
				{ noremap = true, silent = true })
		}
	}


}
