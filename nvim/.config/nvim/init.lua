require('options')

require('plugins')

vim.cmd([[colorscheme onedark]])

P = function(v)
	print(vim.inspect(v))
	return v

end
