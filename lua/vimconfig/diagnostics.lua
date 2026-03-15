vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  underline = true,
  float = { 
    border = 'rounded', 
    source = 'if_many',
    style = "minimal",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ", 
      [vim.diagnostic.severity.WARN] =" ", 
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },

  virtual_text = true,
  virtual_lines = false,

  jump = { float = true },
}
