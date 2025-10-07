-- lsp
-- generally used for autocompletion see cmp.lua
-- make sure lsp is installed
return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")

    -- capabilities for completion (nvim-cmp)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local ok, cmp_caps = pcall(require, "cmp_nvim_lsp")
    if ok then
      capabilities = cmp_caps.default_capabilities(capabilities)
    end

    -- Lua
    lspconfig.lua_ls.setup({ capabilities = capabilities })

    -- HTML
    lspconfig.html.setup({
      capabilities = capabilities,
      filetypes = { "html", "htm", "shtml" },
      root_dir = util.root_pattern(".git", "package.json", ".hg") or util.path.dirname(vim.fn.getcwd()),
      settings = {
        html = {
          validate = { scripts = true, styles = true }, -- diagnostics
          format = { enable = true },
          suggest = { html5 = true },
        },
      },
    })

    -- Diagnostics UI
    vim.diagnostic.config({
      virtual_text = { prefix = "●", spacing = 2 },
      signs = true,
      underline = true,
      update_in_insert = false,
    })
  end,
}

