vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd [[
    hi Normal guibg=NONE ctermbg=NONE
]]
vim.opt.swapfile = false
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

