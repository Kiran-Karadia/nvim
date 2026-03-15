local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	tabstop = 2,
	softtabstop = 2,
	expandtab = true,
	smartindent = true,
	autoindent = true,
	mouse = 'a',
  clipboard = "unnamedplus",
	showmode = false,
	breakindent = true,
	undofile = true,
	ignorecase = true,
	smartcase = true,
	signcolumn = 'yes',
	updatetime = 250,
	timeoutlen = 300,
	splitright = true,
	splitbelow = true,
	list = true,
	listchars = { tab = '» ', trail = '·', nbsp = '␣' },
	inccommand = 'split',
	cursorline = true,
	scrolloff = 15,
	confirm = true,
  completeopt = "menuone,noinsert,noselect",

  foldmethod = "indent",
  foldexpr = "v:lua.vim.ztreesitter.foldexpr()",
  foldlevel = 99
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
