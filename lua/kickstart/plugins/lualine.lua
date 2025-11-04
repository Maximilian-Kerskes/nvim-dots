return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "echasnovski/mini.icons" },
		event = "VeryLazy",
		opts = function(_, opts)
			opts.options = opts.options or {}
			opts.options.theme = opts.options.theme or "tokyonight"

			opts.sections = opts.sections or {}
			opts.sections.lualine_c = opts.sections.lualine_c or {}
			opts.sections.lualine_x = opts.sections.lualine_x or {}
			table.insert(opts.sections.lualine_c, {
				function()
					return vim.fn.expand("%:p:h")
				end,
			})
			table.insert(opts.sections.lualine_c, 'filename')
			table.insert(opts.sections.lualine_x, {
				function()
					local reg = vim.fn.reg_recording()
					if reg == "" then
						return ""
					else
						return "Recording @" .. reg
					end
				end,
				cond = function()
					return vim.fn.reg_recording() ~= ""
				end,
			})

			table.insert(opts.sections.lualine_x, {
				function()
					return require("lazydo").get_lualine_stats()
				end,
				cond = function()
					return require("lazydo")._initialized
				end,
			})

			return opts
		end,
		config = function(_, opts)
			require("lualine").setup(opts)
		end,
	},
}
