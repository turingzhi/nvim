-- local current_signature = function()
-- 	if not pcall(require, 'lsp_signature') then return end
-- 	local sig = require("lsp_signature").status_line(50)
-- 	return sig.label .. "🐼" .. sig.hint
-- end

return {
	-- "theniceboy/eleline.vim",
	-- branch = "no-scrollbar",
	"nvim-lualine/lualine.nvim",
	-- You can optionally lazy-load heirline on UiEnter
	-- to make sure all required plugins and colorschemes are loaded before setup
	-- event = "UiEnter",
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = {
					'mode'
				},
				lualine_b = { 'filename', 'branch', 'diff', 'diagnostics' },
				lualine_c = {
					--{
					--	'filename',
					--	file_status = true, -- displays file status (readonly status, modified status)
					--	path = 1      -- 0 = just filename, 1 = relative path, 2 = absolute path
					--}
				},
				lualine_x = {},
				lualine_y = { 'filesize', 'fileformat', 'filetype' },
				lualine_z = { 'location' }
			},
			--			inactive_sections = {
			--				lualine_a = {},
			--				lualine_b = {},
			--				lualine_c = { 'filename' },
			--				lualine_x = { 'location' },
			--				lualine_y = {},
			--				lualine_z = {}
			--			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
