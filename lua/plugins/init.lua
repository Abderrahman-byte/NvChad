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
}
