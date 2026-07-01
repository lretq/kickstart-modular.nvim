return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#091517',
				base01 = '#091517',
				base02 = '#829799',
				base03 = '#829799',
				base04 = '#daf5f7',
				base05 = '#f2feff',
				base06 = '#f2feff',
				base07 = '#f2feff',
				base08 = '#ff3f82',
				base09 = '#ff3f82',
				base0A = '#26efff',
				base0B = '#4cff5c',
				base0C = '#8cf6ff',
				base0D = '#26efff',
				base0E = '#4cf2ff',
				base0F = '#4cf2ff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#829799',
				fg = '#f2feff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#26efff',
				fg = '#091517',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#829799' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#8cf6ff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#4cf2ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#26efff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#26efff',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#8cf6ff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#4cff5c',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#daf5f7' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#daf5f7' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#829799',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
