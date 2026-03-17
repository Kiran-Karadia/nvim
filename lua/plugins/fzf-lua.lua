vim.pack.add({
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/ibhagwan/fzf-lua",
})

require("nvim-web-devicons").setup()

local fzf = require("fzf-lua")

local colors = { true }
local winopts = {
  height = 0.95,
  width = 0.95,
}

fzf.setup {
  fzf_colors = colors,
  winopts = winopts,
}


local vk = vim.keymap

vk.set("n", "<leader>ff", function()
  fzf.files()
end, { desc = "Find files" })

vk.set("n", "<leader>fg", function()
  fzf.live_grep()
end, { desc = "Grep files" })

vk.set("n", "<leader>fb", function()
  fzf.buffers()
end, { desc = "Find in all buffers" })

vk.set("n", "<leader>fh", function()
  fzf.history()
end, { desc = "Find history" })

vk.set("n", "<leader>fq", function()
  fzf.quickfix()
end, { desc = "Quickfix list" })

vk.set("n", "<leader><C-f>", function()
  fzf.blines()
end, { desc = "Find in buffer" })
