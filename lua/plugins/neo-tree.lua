-- file showing on the left
return {
    "nvim-neo-tree/neo-tree.nvim", -- tree / information of the directory you are in
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  config = function()
    vim.keymap.set('n', '<C-x>', ':Neotree filesystem show reveal left<CR>', {})
    vim.keymap.set('n', '<C-f>', ':Neotree focus<CR>', {})
    require("neo-tree").setup({
      sources = {
        "filesystem",
        "git_status",
        "buffers"
      },
      -- symbols next to git status
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change these to whatever you like
            added     = "✚",
            modified  = "●",
            deleted   = "✖",
            renamed   = "➜",
            untracked = "",
            ignored   = "",
            unstaged  = "u",
            staged    = "",
            conflict  = "",
          }
        }
      }
    })

  end
}
