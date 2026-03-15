vim.pack.add({
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/ibhagwan/fzf-lua",
})

require("nvim-web-devicons").setup()

local fzf = require("fzf-lua")

fzf.setup()


local vk = vim.keymap

vk.set("n", "<leader>ff", function()
  fzf.files()
end, { desc = "Find files" })

