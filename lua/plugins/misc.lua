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
  {
    "LunarVim/bigfile.nvim",
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          insert = "g<C-g>s",
          insert_line = "g<C-g>S",
          normal = "gys",
          normal_cur = "gyss",
          normal_line = "gyS",
          normal_cur_line = "gySS",
          visual = "gS",
          visual_line = "ggS",
          delete = "gds",
          change = "gcs",
          change_line = "gcS",
        },
      })
    end,
  },
}
