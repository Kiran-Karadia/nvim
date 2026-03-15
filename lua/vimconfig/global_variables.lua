local global_variables = {
	mapleader = ' ',
	maplocalleader = ' ',
	have_nerd_font = true
}

for k, v in pairs(global_variables) do
	vim.g[k] = v
end
