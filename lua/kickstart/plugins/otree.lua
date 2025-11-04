return {
	{
		"Eutrius/Otree.nvim",
		lazy = false,
		dependencies = {
			"stevearc/oil.nvim",
			{ "echasnovski/mini.icons", opts = {} },
		},
		keys = {
                        { "<leader>ot", ":Otree<CR>", mode = "n", desc = "Toggle Otree window" },
		},
		config = function()
			require("Otree").setup({
				win_size = 45,
				open_on_startup = false,
				show_hidden = true,
				show_ignore = true,
				focus_on_enter = true,
				git_signs = true,
				lsp_signs = true
			})
		end,
	},
}
