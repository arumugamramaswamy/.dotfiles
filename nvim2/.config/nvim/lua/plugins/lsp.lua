return {
  { 'neovim/nvim-lspconfig' },
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
      local lspconfig = require 'lspconfig'
      lspconfig.rust_analyzer.setup {}
      lspconfig.lua_ls.setup {}
    end,
  },
}
