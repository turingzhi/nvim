return {
	--	{
	--		"instant-markdown/vim-instant-markdown",
	--		ft = { "markdown" },
	--		build = "yarn install",
	--		config = function()
	--			vim.g.instant_markdown_autostart = 0
	--			vim.g.instant_markdown_mathjax = 1
	--		end,
	--	},
	-- install with yarn or npm
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_preview_options = {
				mkit = {},                 -- markdown-it options for rendering
				katex = {},                -- KaTeX options for math
				uml = {},                  -- markdown-it-plantuml options
				maid = {},                 -- mermaid options
				disable_sync_scroll = 0,   -- whether to disable sync scroll, default 0
				sync_scroll_type = 'relative', -- 'middle', 'top', or 'relative', default is 'middle'
				hide_yaml_meta = 1,        -- whether to hide YAML metadata, default is 1
				sequence_diagrams = {},    -- js-sequence-diagrams options
				flowchart_diagrams = {},   -- flowchart diagrams options
				content_editable = false,  -- if enable content editable for preview page, default: false
				disable_filename = 0,      -- if disable filename header for preview page, default: 0
				toc = {}                   -- Table of Contents options
			}
		end,
		ft = { "markdown" },
		config = function()
		end
	},
}
