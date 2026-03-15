
local options = {
	number = true,
	shiftwidth = 2,
	tabstop = 2,
	mouse = 'a',
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
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

local global_variables = {
	mapleader = ' ',
	maplocalleader = ' ',
	have_nerd_font = true
}

