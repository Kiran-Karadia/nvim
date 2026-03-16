vim.pack.add({
  -- "https://github.com/rafamadriz/friendly-snippets",
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range('1.*')
  },
})

-- require("friendly-snippets").setup()
require("blink.cmp").setup {
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
  },
  signature = { enabled = true },
}
