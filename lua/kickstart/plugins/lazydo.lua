return {
	{
		"Dan7h3x/LazyDo",
		branch = "main",
		cmd = { "LazyDoToggle", "LazyDoPin", "LazyDoToggleStorage" },
		keys = { -- recommended keymap for easy toggle LazyDo in normal and insert modes (arbitrary)
			{
				"<leader>ld",
				"<ESC><CMD>LazyDoToggle<CR>",
				mode = { "n", "i" },
			},
		},
		event = "VeryLazy",
		opts = {
			-- your config here
		},
	},
}
