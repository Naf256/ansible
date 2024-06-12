require('options')

require('plugins')

-- vim.cmd([[set fileformats=dos]])
vim.cmd([[colorscheme xcodedark]])

P = function(v)
	print(vim.inspect(v))
	return v

end
