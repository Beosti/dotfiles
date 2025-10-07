-- highlighter (changing colors of certain words)
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- parser (highlighter for programming languages)
  -- treesitter
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "asm", "html"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
