local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader>h', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>l', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<leader>b<', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>b>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<leader>d', '<Cmd>BufferClose<CR>', opts)

-- Buffer picking
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
map('n', '<C-S-p>', '<Cmd>BufferPickDelete<CR>', opts)  -- Capital S

-- Sort automatically by...
map('n', '<leader>bo', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

