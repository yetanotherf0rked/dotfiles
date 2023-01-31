return {
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "folke/tokyonight.nvim",
  'nvim-tree/nvim-web-devicons',
  "nvim-treesitter/nvim-treesitter",
  {
      'nvim-telescope/telescope.nvim',
      branch = '0.1.x',
      dependencies = {
         {'nvim-lua/plenary.nvim'},
      }
  },
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
--        {'hrsh7th/cmp-buffer'},       -- Optional
--        {'hrsh7th/cmp-path'},         -- Optional
--        {'saadparwaiz1/cmp_luasnip'}, -- Optional
--        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
--        {'rafamadriz/friendly-snippets'}, -- Optional
      }
    },
}
