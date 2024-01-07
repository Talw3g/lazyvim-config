-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<F2>', '<Cmd>:split<CR>')
vim.keymap.set('n', '<F3>', '<Cmd>:vertical split<CR>')
vim.keymap.set('n', '<Space>', '<Cmd>:tab new<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-Left>', '<Cmd>:tabp<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-Right>', '<Cmd>:tabn<CR>')
vim.keymap.set('n', '<C-Up>', '<Cmd>:m .-2<CR>==')
vim.keymap.set('n', '<C-Down>', '<Cmd>:m .+1<CR>==')
vim.keymap.set('i', '<C-Up>', '<Cmd>:m .-2<CR>')
vim.keymap.set('i', '<C-Down>', '<Cmd>:m .+1<CR>')
vim.keymap.set({ 'n', 'i' }, '<A-Up>', '<Cmd>:wincmd k<CR>')
vim.keymap.set({ 'n', 'i' }, '<A-Down>', '<Cmd>:wincmd j<CR>')
vim.keymap.set({ 'n', 'i' }, '<A-Right>', '<Cmd>:wincmd l<CR>')
vim.keymap.set({ 'n', 'i' }, '<A-Left>', '<Cmd>:wincmd h<CR>')
