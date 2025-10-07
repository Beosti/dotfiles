-- live preview of HTML and CSS files
return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'ibhagwan/fzf-lua',
    'echasnovski/mini.pick',
    'folke/snacks.nvim'
  },
  config = function()
    vim.keymap.set('n', '<C-,>', ':LivePreview start<CR>', {})
  end
}
