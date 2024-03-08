-- deoplete for jedi

vim.api.nvim_set_var('deoplete#enable_at_startup', '1')

-- no fancy GUI mouse

vim.cmd [[set mouse= ]]

-- yt: https://www.youtube.com/watch?v=w7i4amO_zaE
-- github: https://github.com/ThePrimeagen/init.lua

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- the only correct way

vim.opt.splitbelow = true
vim.opt.splitright = true
