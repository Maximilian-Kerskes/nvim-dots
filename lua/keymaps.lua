vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>e", ":<cmd>lua vim.diagnostic.open_float()<CR><CR>", { noremap = true, silent = true })

-- tab indent on select
vim.keymap.set("v", "<tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-tab>", "<gv", { noremap = true, silent = true })

-- ctrl-c/ctrl-v
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })

-- window management
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>", { noremap = true, silent = true })

-- dirs
vim.keymap.set("n", "<leader>`", ":cd %:p:h<CR>", { noremap = true, silent = true })

-- buffers
vim.keymap.set("n", "<leader>bb", ":b#<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
-- vim: ts=2 sts=2 sw=2 et
