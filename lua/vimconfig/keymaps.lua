local vk = vim.keymap

vk.set('n', '<leader>e', '<cmd>Ex<CR>', { desc = "Open N[e]trw" })
vk.set('n', '<C-c>', '<cmd>nohlsearch<CR>')

vk.set("n", "<C-h>", "<C-w>h", { desc = "Move focus left" })
vk.set("n", "<C-j>", "<C-w>j", { desc = "Move focus bottom" })
vk.set("n", "<C-k>", "<C-w>k", { desc = "Move focus top" })
vk.set("n", "<C-l>", "<C-w>l", { desc = "Move focus right" })

vk.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics [q]uickfix list" })
