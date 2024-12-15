return {
  -- MASON
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  -- MASON-LSPCONFIG
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright"
        }
      })
    end
  },
  -- LSP-CONFIG
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        filetypes = {"python"},
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<C-a>', vim.lsp.buf.code_action, {})
    end
  },
  -- MASON-TOOLS
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
    require("mason-tool-installer").setup({
      'black',
      'debugpy',
      'flake8',
      'isort',
      'mypy',
      'pylint',
      })
    vim.api.nvim_command("MasonToolsInstall")
    end
  }
}
