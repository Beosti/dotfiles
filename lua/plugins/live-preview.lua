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
    require('livepreview.config').set({})
    vim.keymap.set('n', '<C-,>', ':LivePreview start<CR>', {})
    vim.keymap.set('n', '<C-;>', ':LivePreview close<CR>', {})
  end
}
