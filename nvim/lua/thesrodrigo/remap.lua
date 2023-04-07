vim.g.mapleader = " "

local bind = vim.keymap.set

bind({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

bind("n", "<leader>e", vim.cmd.Ex)

bind("v", "J", ":m '>+1<CR>gv=gv")
bind("v", "K", ":m '<-2<CR>gv=gv")

bind("n", "J", "mzJ`z")
bind("n", "<C-d>", "<C-d>zz")
bind("n", "<C-u>", "<C-u>zz")
bind("n", "n", "nzzzv")
bind("n", "N", "Nzzzv")

-- greatest remap ever
bind("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
bind({ "n", "v" }, "<leader>y", [["+y]])
bind("n", "<leader>Y", [["+Y]])

bind({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
bind("i", "kj", "<Esc>")

bind("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
bind("v", "<leader>s", [["hy:%s/<C-r>h//gc<left><left><left>]])
