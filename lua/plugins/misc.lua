return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[²]],
      direction = "float",
      float_opts = {
        border = "curved",
      },
    },
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     highlight = {
  --       language_tree = true,
  --       enable = function()
  --         if vim.fn.strwidth(vim.fn.getline(".")) > 2000 or vim.fn.getfsize(vim.fn.expand("%")) > 1024 * 1024 then
  --           return false
  --         else
  --           return true
  --         end
  --       end,
  --     },
  --   },
  -- },
}
