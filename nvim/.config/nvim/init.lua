require('options')

require('plugins')

vim.cmd([[colorscheme onedark]])

P = function(v)
	print(vim.inspect(v))
	return v

end

vim.cmd([[set fileformats=unix,dos]])

-- opening a file will remove the ^M endling lines which comes
-- with windows line endings
vim.cmd([[autocmd BufReadPost * try | silent! %s/\r$// | catch | endtry]])
