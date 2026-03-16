vim.pack.add({
  -- "https://github.com/rafamadriz/friendly-snippets",
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range('1.*')
  },
})

-- require("friendly-snippets").setup()
require("blink.cmp").setup {
  keymap = {
    preset = 'default',
    ['<C-n>'] = { 'show', 'select_next', 'fallback' },
    ['<C-p>'] = { 'show', 'select_prev', 'fallback' },
  },
  completion = {
    trigger = {
      show_on_keyword = false,
      show_on_trigger_character = false,
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
    list = {
      selection = {
        preselect = false,
        auto_insert = true
      },
    },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets' },
  },
  signature = { enabled = true },
}
