vim.pack.add({
  {
    src = "https://github.com/windwp/nvim-autopairs",
    event = "InsertEnter"
  }
})

require("nvim-autopairs").setup {}

