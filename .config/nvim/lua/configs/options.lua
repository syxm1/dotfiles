vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.opt.compatible = false
vim.opt.nu = true

vim.opt.backup = false

-- basic
vim.o.signcolumn = "yes"
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 5
vim.o.sidescrolloff = 10
vim.o.swapfile = false

-- indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = false

-- visual
vim.o.termguicolors = true
vim.o.showmatch = true
vim.o.showmode = false
vim.o.pumheight = 10
vim.o.pumblend = 0
vim.o.winblend = 0

-- behavior
vim.o.hidden = true
vim.o.errorbells = false
vim.o.mouse = "a"

-- clipboard
vim.o.clipboard = 'unnamedplus'
vim.g.clipboard = {
  name = 'win32yank-wsl',
  copy = {
    ['+'] = 'win32yank.exe -i --crlf',
    ['*'] = 'win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = 'win32yank.exe -o --lf',
    ['*'] = 'win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}
