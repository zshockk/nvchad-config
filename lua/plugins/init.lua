return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "yamlls",
        "hadolint",
        "gopls",
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "delve",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "xml",
        "html",
        "css",
        "javascript",
        "dockerfile",
        "yaml",
        "toml",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "jsdoc",
        "json",
        "jsonc",
        "json5",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "vim",
        "vimdoc",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  {
    "nvim-tree/nvim-tree.lua",
  },

  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
  },

  {
    "hrsh7th/nvim-cmp",
    lazy = false,
  },

  {
    "L3MON4D3/LuaSnip",
    lazy = false,
  },

  {
    "folke/which-key.nvim",
    lazy = false,
    opts_extend = { "spec" },
    opts = {
      preset = "classic",
      defaults = {},
      spec = {
        {
          mode = { "n", "x" },
          { "<leader>f", group = "file/find" },
          { "<leader>g", group = "git" },
          { "<leader>s", group = "search" },
          { "<leader>u", group = "ui" },
          { "[", group = "prev" },
          { "]", group = "next" },
          { "g", group = "goto" },
          { "z", group = "fold" },
          {
            "<leader>w",
            group = "windows",
            proxy = "<c-w>",
            expand = function()
              return require("which-key.extras").expand.win()
            end,
          },
        },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show { global = false }
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
