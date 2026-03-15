local va = vim.api
local autogroup = va.nvim_create_augroup('AutoCmdsGroup', { clear = true})

va.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = autogroup,
  callback = function() 
    vim.hl.on_yank() 
  end,
})


va.nvim_create_autocmd('BufReadPost', {
  desc = "Restore last cursor position",
  group = autogroup,
  callback = function()
    if vim.o.diff then
      return
    end

    local last_pos = va.nvim_buf_get_mark(0, '"')
    local last_line = va.nvim_buf_line_count(0)

    local row = last_pos[1]
    if row < 1 or row > last_line then
      return
    end

    pcall(va.nvim_win_set_cursor, 0, last_pos)
  end
})
