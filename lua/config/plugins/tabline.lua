return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		options = {
			mode = "buffers",
			numbers = "none",
			diagnostics = "nvim_lsp",
			right_mouse_command = "bdelete %",
			close_command = "bdelete! %d",    -- can be a string | function, | false see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
			middle_mouse_command = nil,       -- can be a string | function, | false see "Mouse actions"
			lose_command = "bdelete! %d",     -- can be a string | function, | false see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
			middle_mouse_command = nil,       -- can be a string | function, | false see "Mouse actions"
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
			indicator = {
				icon = '▎', -- this should be omitted if indicator style is not 'icon'
				-- style = 'icon' | 'underline' | 'none',
				style = "icon",
			},
			show_buffer_close_icons = true,
			show_close_icon = true,
			modified_icon = "●",
			enforce_regular_tabs = false,
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
