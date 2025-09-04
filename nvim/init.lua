-- ~/.config/nvim/init.lua

-- 1. First, source your legacy Vimscript config (if you have one)
vim.cmd('source ~/.config/nvim/legacy.vim')

-- 2. Then set your basic options (core Neovim settings)
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.relativenumber = true
-- ... other basic settings

-- 3. Set your keymaps that are NOT plugin-dependent
vim.keymap.set('n', '<leader>s', ':w<CR>', { desc = 'Save file' })
-- ... other basic keymaps

-- 4. FINALLY, load lazy.nvim and your plugin specifications
require("config.lazy")
