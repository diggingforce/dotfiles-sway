local map = vim.keymap.set

-- Escape
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map("i", "kj", "<ESC>", { desc = "Exit insert mode" })

-- Center cursor
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
map("n", "n", "nzzzv", { desc = "Next search match and center" })
map("n", "N", "Nzzzv", { desc = "Prev search match and center" })

-- Clipboard
map("x", "<leader>p", [["_dP]], { desc = "Paste without replacing register" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without copying to register" })

-- Window resize
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>resize +2<cr>", { desc = "Increase window width" })

-- Search
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
