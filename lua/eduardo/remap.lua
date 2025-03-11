vim.g.mapleader = " "

-- project viewer (open nvim file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- enter normal mode
vim.keymap.set("i", "<C-j>", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("v", "<C-j>", "<Esc>")

-- center movement
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move 10
vim.keymap.set("n", "J", "10jzz")
vim.keymap.set("n", "K", "10kzz")

-- move selected text with J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- void register
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("v", "c", "\"_c")
vim.keymap.set("n", "x", "\"_x")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- replace word selected
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- flop command
vim.keymap.set("n", "Q", "<nop>")

-- complete commands
vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "[", "[]<Esc>i")
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "\"", "\"\"<Esc>i")
