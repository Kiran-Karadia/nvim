local signs = {
  [vim.diagnostic.severity.ERROR] = " ",
  [vim.diagnostic.severity.WARN] = " ",
  [vim.diagnostic.severity.INFO] = " ",
  [vim.diagnostic.severity.HINT] = " ",
}
vim.diagnostic.config {
  update_in_insert = true,
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  float = {
    border = 'rounded',
    source = 'if_many',
  },
  signs = false,

  virtual_text = {
    prefix = function(diagnostic)
      return signs[diagnostic.severity]
    end,
    spacing = 4
  },
  severity_sort = true,
}
