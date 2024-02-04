-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.ttyfast = true
vim.o.wrap = false
vim.o.incsearch = true
vim.o.mouse = ""
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.bo.autoindent = true
vim.opt.updatetime = 750

-- set leader key
vim.keymap.set("n", "ù", "<Nop>")
vim.g.mapleader = "ù"
vim.g.maplocalleader = "ù"

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- use TAB to go to next LSP diagnostic
vim.keymap.set("n", "<Tab>", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "<S-Tab>", vim.diagnostic.goto_prev, {})

vim.filetype.add({ extension = { sitemap = "java" } })
