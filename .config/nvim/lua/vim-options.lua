local indent = 4

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.cmd("set nu")
vim.cmd("set relativenumber")
vim.cmd("set ignorecase")

-- indention
vim.opt.autoindent = true -- auto indentation
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = indent -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter
vim.opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.opt.tabstop = indent -- insert 2 spaces for a tab
vim.opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"
