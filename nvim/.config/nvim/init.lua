require('options')

require('plugins')

vim.cmd([[colorscheme xcodedark]])
-- vim.cmd([[colorscheme tokyonight]])

P = function(v)
	print(vim.inspect(v))
	return v

end
