return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
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
          mason = false,
          autostart = false,
          plugins = {
            autopep8 = {
              enabled = false,
            },
            yapf = {
              enabled = false,
              column_limit = 100,
            },
          },
        },
        -- phpactor,
      },
    },
  },
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.ensure_installed, "isort")
  --   end,
  -- },
  {
    "stevearc/conform.nvim",
    optional = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "java" })
    end,
  },
  -- {
  --   "phpactor/phpactor",
  -- },
}
