local plugins = {
  "famiu/feline.nvim",
  "hrsh7th/vscode-langservers-extracted",
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "tsserver",
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
}

return plugins
