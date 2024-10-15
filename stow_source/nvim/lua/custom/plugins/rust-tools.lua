return {
  -- Mason for managing LSP servers and more
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },

  -- Mason integration with lspconfig
  {
    'williamboman/mason-lspconfig.nvim',
    requires = { 'neovim/nvim-lspconfig' },
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'rust_analyzer' }, -- Ensure rust_analyzer is installed
        automatic_installation = true, -- Automatically install configured LSPs
      }

      -- LSP setup for rust-analyzer
      local lspconfig = require 'lspconfig'
      require('mason-lspconfig').setup_handlers {
        -- Default handler for all installed servers
        function(server_name)
          lspconfig[server_name].setup {}
        end,
        -- Custom setup for rust-analyzer
        ['rust_analyzer'] = function()
          require('rust-tools').setup {}
        end,
      }
    end,
  },

  -- Rust tools (optional)
  {
    'simrat39/rust-tools.nvim',
    requires = { 'neovim/nvim-lspconfig', 'nvim-lua/plenary.nvim' },
  },
}
