-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  html = {},
  cssls = {},
  gopls = {},
  efm = {},
  pyright = {},
  emmet_language_server = {},
  docker_compose_language_service = {},
  dockerls = {},
  helm_ls = {},
  volar = {
    init_options = {
      vue = {
        hybridMode = false,
      },
    },
    settings = {
      typescript = {
        inlayHints = {
          enumMemberValues = {
            enabled = true,
          },
          functionLikeReturnTypes = {
            enabled = true,
          },
          propertyDeclarationTypes = {
            enabled = true,
          },
          parameterTypes = {
            enabled = true,
            suppressWhenArgumentMatchesName = true,
          },
          variableTypes = {
            enabled = true,
          },
        },
      },
    },
  },
  ts_ls = {
    init_options = {
      plugins = {
        {
          name = "@vue/typescript-plugin",
          location = vim.fn.stdpath "data" .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",

          languages = { "vue" },
        },
      },
    },
    filetypes = {
      "javascript",
      "javascript.jsx",
      "javascriptreact",
      "typescript",
      "typescript.tsx",
      "typescriptreact",
      "vue",
    },
    settings = {
      typescript = {
        tsserver = {
          useSyntaxServer = false,
        },
        inlayHints = {
          includeInlayParameterNameHints = "all",
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayVariableTypeHintsWhenTypeMatchesName = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        },
      },
    },
  },
}

local nvlsp = require "nvchad.configs.lspconfig"

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  lspconfig[name].setup(opts)
end
