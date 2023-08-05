lvim.transparent_window = true
vim.opt.relativenumber = true
lvim.format_on_save.enabled = true
vim.opt.guicursor = ""






-- Define the key mappings using vim.cmd to set them globally
vim.cmd([[nnoremap <S-s> :lua require('harpoon.mark').add_file()<CR>]])
vim.cmd([[nnoremap <S-b> :lua require('harpoon.ui').toggle_quick_menu()<CR>]])
vim.cmd([[nnoremap <S-q> :lua require('harpoon.ui').nav_file(1)<CR>]])
vim.cmd([[nnoremap <S-w> :lua require('harpoon.ui').nav_file(2)<CR>]])
vim.cmd([[nnoremap <S-e> :lua require('harpoon.ui').nav_file(3)<CR>]])
vim.cmd([[nnoremap <S-r> :lua require('harpoon.ui').nav_file(4)<CR>]])
vim.cmd([[nnoremap <S-t> :lua require('harpoon.ui').nav_file(5)<CR>]])

lvim.plugins = {
  -- themes start
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false },
  { "ellisonleao/gruvbox.nvim",  name = "gruvbox", lazy = false, priority = 1000 },
  -- themes end

  -- harpoon config start
  { 'ThePrimeagen/harpoon' },
  { 'nvim-lua/plenary.nvim' },
  { 'BurntSushi/ripgrep' },
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- harpoon config end
  --
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.api.nvim_command, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
    build = "npm install --prefix server",
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },

  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
        require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
      end, 100)
    end,
  },

  {
    "ahmedkhalf/lsp-rooter.nvim",
    event = "BufRead",
    config = function()
      require("lsp-rooter").setup()
    end,
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- {
  --   "Pocco81/auto-save.nvim",
  --   config = function()
  --     require("auto-save").setup()
  --   end,
  -- },


  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "90",
      disabled_filetypes = { "help", "text", "markdown" },
      custom_colorcolumn = {},
      scope = "file",
    }
  },
}
lvim.colorscheme = "gruvbox"
-- Set global options
lvim.formatting = {
  wrap = true,
  columns = 85,
  linebreak = true
}
