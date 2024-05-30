local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("options/coc-config")
require("vim-options")
require("lazy").setup("plugins")

vim.cmd [[
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
    hi VertSplit guibg=NONE ctermbg=NONE
   ]]

vim.api.nvim_set_keymap('n', '<C-w>>', ':vertical resize +5<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-w><', ':vertical resize -5<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-w>=', ':wincmd =<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ol", ":!open <c-r><c-a><CR>", { noremap = true, silent = true })
