vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- keymaps
-- easily format your markdown files
vim.keymap.set('n', ';fm', ':!fmt % | %<cr>', { silent = true })
-- -- file tree shortcuts
vim.keymap.set('n', ';ft', ':e.<cr>')
-- api testing shortcuts
vim.keymap.set('n', '<leader>at', '<Plug>RestNvim')
vim.keymap.set('n', '<leader>ap', '<Plug>RestNvimPreview')
vim.keymap.set('n', '<leader>al', '<Plug>RestNvimLast')
-- y: telescope
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

-- testing lua files
vim.keymap.set('n', ',t', '<Plug>PlenaryTestFile')

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
-- c: quick command
-- vim.keymap.set('n', ',c', ':lua vim.lsp.buf.rename()<cr>') -- quickly rename a variable
vim.keymap.set('n', '<leader>ww', ':w<cr>')
vim.keymap.set('n', '<leader>cW', ':wa<cr>')
vim.keymap.set('n', '<leader>cE', ':e!<cr>')
vim.keymap.set('n', '<leader>cq', ':q<cr>')
vim.keymap.set('n', '<leader>cQ', ':q!<cr>')
vim.keymap.set('n', '<leader>cx', ':x<cr>')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'm', 'mj')
vim.keymap.set('n', '`', '`jzz')
vim.keymap.set('n', '<leader>z', ':ZenMode<cr>')
vim.keymap.set('n', '<leader>x', ':!chmod +x %<cr>')
-- w: window
-- vim.keymap.set('n', '<leader>wh', '<c-w>h')
-- vim.keymap.set('n', '<leader>wj', '<c-w>j')
-- vim.keymap.set('n', '<leader>wk', '<c-w>k')
-- vim.keymap.set('n', '<leader>wl', '<c-w>l')
-- vim.keymap.set('n', '<leader>w1', '<c-w>o')
-- vim.keymap.set('n', '<leader>wx', ':x<cr>')
-- vim.keymap.set('n', '<leader>w2', ':sp<cr>')
-- vim.keymap.set('n', '<leader>w3', ':vs<cr>')
-- window resize
vim.keymap.set('n', '<m-9>', '<c-w><')
vim.keymap.set('n', '<m-0>', '<c-w>>')
vim.keymap.set('n', '<m-->', '<c-w>-')
vim.keymap.set('n', '<m-=>', '<c-w>+')
-- b: buffer
vim.keymap.set('n', '<leader>n', ':bn<cr>', { silent = true })
vim.keymap.set('n', '<leader>p', ':bp<cr>', { silent = true })
vim.keymap.set('n', '<leader>d', ':bd<cr>', { silent = true })
-- s: search
vim.keymap.set('n', '<leader>ss', '/')
vim.keymap.set('n', '<leader>sw', '/\\<lt>\\><left><left>')
-- l/g/w: language
-- l: general
-- g: goto
-- w: workspace
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

vim.keymap.set('n', '<leader>lb', ':SymbolsOutline<cr>')
vim.keymap.set('n', '<f4>', ':SymbolsOutline<cr>')

vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>gp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>gn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references)

-- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
-- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
-- vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end)
-- t: terminal
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<cr>')
vim.keymap.set('n', '<f2>', ':FloatermToggle<cr>')
vim.keymap.set('t', '<f2>', '<c-\\><c-n>:FloatermToggle<return>')
vim.keymap.set('n', '<leader>tn', ':FloatermNew<cr>')
-- h: git
vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<cr>')
vim.keymap.set('n', '<leader>hn', ':Gitsigns next_hunk<cr>')
vim.keymap.set('n', '<leader>hc', ':Gitsigns preview_hunk<cr>')
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<cr>')
vim.keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer')
vim.keymap.set('n', '<leader>hb', ':Gitsigns blame_line<cr>')
vim.keymap.set('n', '<leader>hd', ':Gitsigns diffthis<cr>')
vim.keymap.set('n', '<leader>hs', ':<C-U>Gitsigns select_hunk<CR>')
vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>')
