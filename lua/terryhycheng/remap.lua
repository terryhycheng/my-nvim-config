vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Close All Other Tabs" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>th", ":tabprev<CR>", { desc = "Prev Tab" })
