-- [[ Configure and install plugins ]]
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	-- modular approach: using `require 'path/name'` will
	-- include a plugin definition from file lua/path/name.lua

	require("kickstart/plugins/gitsigns"),

  require('kickstart/plugins/markmap'),

	require("kickstart/plugins/clear-action"),

	require("kickstart/plugins/rustaceanvim"),

	require("kickstart/plugins/inlay-hints"),

	require("kickstart/plugins/outline"),

	require("kickstart/plugins/nvim-origami"),

	require("kickstart/plugins/autopairs"),

	-- require("kickstart/plugins/arduino-nvim"),

	require("kickstart/plugins/debug"),

	require("kickstart/plugins/which-key"),

	require("kickstart/plugins/windsurf"),

	require("kickstart/plugins/snacks"),

	require("kickstart/plugins/mini"),

  require("kickstart/plugins/trouble"),

	require("kickstart/plugins/noice"),

	require("kickstart/plugins/lazydo"),

	require("kickstart/plugins/lualine"),

	require("kickstart/plugins/lspconfig"),

	require("kickstart/plugins/rustaceanvim"),

	require("kickstart/plugins/cmake-tools"),

	require("kickstart/plugins/conform"),

	require("kickstart/plugins/blink-cmp"),

	require("kickstart/plugins/tokyonight"),

	require("kickstart/plugins/todo-comments"),

	require("kickstart/plugins/oil"),

	-- require 'kickstart/plugins/nvim-tree',
	require("kickstart/plugins/otree"),

	require("kickstart/plugins/treesitter"),

	require("kickstart/plugins/markdown-preview"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
