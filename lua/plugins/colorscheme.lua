vim.pack.add({
	'https://github.com/loctvl842/monokai-pro.nvim'
})

require('monokai-pro').setup {
	filter = 'octagon',
	italic_comments = true,
}

vim.cmd.colorscheme('monokai-pro')
