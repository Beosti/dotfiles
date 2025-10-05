-- theme colors
return {
  "catppuccin/nvim", -- color scheme
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}
