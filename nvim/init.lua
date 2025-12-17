vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.termguicolors = true


vim.opt.shell = '/usr/bin/fish'

vim.g.mapleader = " "

vim.keymap.set("n", "<C-t>", ":tabnew<CR>")
vim.keymap.set("n", "<S-t>", ":exe v:count1 . 'ToggleTerm'<CR>")

require("config.lazy")
