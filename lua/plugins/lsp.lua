-- extra information while coding
return {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('lua_ls')
      require("lspconfig").lua_ls.setup {}

      -- diagnostics.lua
    vim.diagnostic.config({
      virtual_text = {
      prefix = "●",   -- try "■", "▎", "❗" if you prefer
      spacing = 2,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    })
    -- information when hovering
    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        local opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = 'rounded',
        source = 'always',
        prefix = '',
        scope = 'cursor',
      }
      vim.lsp.buf.hover(nil, opts)
      end,
      })

    end
}
