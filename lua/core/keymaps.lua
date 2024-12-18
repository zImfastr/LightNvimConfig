vim.g.maploader = ' '
vim.g.maplocalloader = ' '

vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.backspace = '2'
vim.opt.autowrite = true
vim.opt.showcmd = true
vim.opt.laststatus = 2

-- use spaces and tab

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<Space>h', ':nohlsearch<CR>')
vim.api.nvim_set_keymap("n", "<Space>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<S-tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-BS>', ':bprev<CR>')


