vim.g.mapleader = " "

-- yt: https://www.youtube.com/watch?v=w7i4amO_zaE
-- github: https://github.com/ThePrimeagen/init.lua

-- visual mode - move highlited down / up

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- half page down / up

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste that doesn`t copy the deleted content to the clipboard

vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to the system clipboard
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>yy", [["+Y]])

--Nvimtree keymaps

vim.keymap.set('n', '<leader>i', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

-- navigate between splits

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- line numbers off / on

vim.keymap.set("n", "<leader>q", ":set nornu<CR>:set nonu<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":set nu<CR>:set rnu<CR>", { silent = true })
    
-- vertical / horizontal terminal

vim.keymap.set("n", "<leader>t", ":vs|:te<CR>", { silent = true })
vim.keymap.set("n", "<leader>r", ":15sp|:te<CR>", { silent = true })

-- exit from terminal mode the normal way

vim.keymap.set("t", "<C-[>", "<C-\\><C-n>")

-- next / previous tab

vim.keymap.set("n", "<leader>l", "gt")
vim.keymap.set("n", "<leader>h", "gT")

