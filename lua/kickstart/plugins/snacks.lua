-- NOTE: Plugins can specify dependencies.
--
-- The dependencies are proper plugin specifications as well - anything
-- you do for a plugin at the top level, you can do for a dependency.
--
-- Use the `dependencies` key to specify the dependencies of a particular plugin

return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- animate = { enabled = false },
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = false },
      input = { enabled = true },
      notifier = {
        enabled = false,
        timeout = 3000,
      },
      picker = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = false },
      words = { enabled = true },
      styles = {
        notification = {
          -- wo = { wrap = true } -- Wrap notifications
        },
      },
    },
    -- stylua: ignore
			keys = {
                -- find
                { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
                { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
                { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
                -- Grep
                { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
                { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
                { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
                { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
                -- search
                { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
                { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
                { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
                { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
                { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
                -- LSP
                { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
                { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
                { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
                { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
                { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
                -- Other
                -- { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
                { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
                -- { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
                { "]]",         function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
                { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
            },
  },
}
-- vim: ts=2 sts=2 sw=2 et
