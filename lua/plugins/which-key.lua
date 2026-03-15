vim.pack.add({
  'https://github.com/folke/which-key.nvim',
  'https://github.com/nvim-mini/mini.icons',
})
require("mini.icons").setup()
require("which-key").setup {
  delay = 0,
}
