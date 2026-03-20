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
  backdrop = 10,
  title_flags = false,
}

fzf.setup {
  fzf_colors = colors,
  winopts = winopts,
}


local map = function(keymap, action, desc)
  vim.keymap.set("n", keymap, action, { desc = desc })
end

map("<leader>f?" , function()
  fzf.builtin()
end, "Find picker")

map("<leader>fr", function()
  fzf.resume()
end, "Resume last search")

map("<leader>ff",  function()
  fzf.files()
end, "Find files")

map("<leader>fg", function()
  fzf.live_grep()
end, "Grep files")

map("<leader>fb", function()
  fzf.buffers()
end, "Find in all buffers")

map("<leader>fh", function()
  fzf.history()
end, "Find history")

map("<leader>fq", function()
  fzf.quickfix()
end, "Quickfix list")

map("<leader><C-f>", function()
  fzf.blines()
end, "Find in buffer")

map("<leader>fw", function()
  fzf.grep_cWORD()
end, "Find word")
