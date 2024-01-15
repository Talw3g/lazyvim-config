return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      { "folke/neodev.nvim", opts = {} },
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    ---@class PluginLspOpts
    opts = {
      servers = {
        lua_ls = {
          -- mason = false, -- set to false if you don't want this server to be installed with mason
          -- Use this to add any additional keymaps
          -- for specific lsp servers
          ---@type LazyKeysSpec[]
          -- keys = {},
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
        pyright = {
          mason = false,
          autostart = false,
        },
        ruff_lsp = {
          mason = false,
          autostart = false,
        },
        pylsp = {
          plugins = {
            pycodestyle = {
              ignore = { "E266", "W503", "W504" },
              maxLineLength = 100,
            },
            autopep8 = {
              enabled = false,
            },
            yapf = {
              enabled = false,
              column_limit = 100,
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "isort")
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = false,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", "isort" },
      },
    },
  },
}
