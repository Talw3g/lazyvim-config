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
          -- insert = "<C-g>s",
          -- insert_line = "<C-g>S",
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
  {
    "sindrets/diffview.nvim",
  },
  {
    "johmsalas/text-case.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("textcase").setup({})
      require("telescope").load_extension("textcase")
    end,
    keys = {
      "ga", -- Default invocation prefix
      { "ga.", "<cmd>TextCaseOpenTelescope<CR>", mode = { "n", "x" }, desc = "Telescope" },
    },
    cmd = {
      -- NOTE: The Subs command name can be customized via the option "substitude_command_name"
      "Subs",
      "TextCaseOpenTelescope",
      "TextCaseOpenTelescopeQuickChange",
      "TextCaseOpenTelescopeLSPChange",
      "TextCaseStartReplacingCommand",
    },
    -- If you want to use the interactive feature of the `Subs` command right away, text-case.nvim
    -- has to be loaded on startup. Otherwise, the interactive feature of the `Subs` will only be
    -- available after the first executing of it or after a keymap of text-case.nvim has been used.
    lazy = false,
  },
}
