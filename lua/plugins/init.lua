return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "lua",
        "javascript",
        "java",
        "bash",
        "fish",
        "python",
        "sql",
        "go",
        "typescript",
        "html",
        "css",
        "scss",
        "vue",
        "htmldjango",
        "yaml",
      },

      sync_install = false,

      auto_install = false,

      highlight = {
        enable = true,
        disable = { "latex" },
        additional_vim_regex_highlighting = true,
      },

      indent = { enable = true, disable = { "yaml" } },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },

  -- {
  --   "folke/trouble.nvim",
  --   lazy = false,
  --   dependencies = "nvim-tree/nvim-web-devicons",
  --   config = function()
  --     require("trouble").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     }
  --   end,
  -- },
  --
  -- {
  --   "folke/todo-comments.nvim",
  --   dependencies = "nvim-lua/plenary.nvim",
  --   cmd = "TodoTelescope",
  --   config = function()
  --     require("todo-comments").setup {}
  --   end,
  -- },
}
