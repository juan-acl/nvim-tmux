local status, packer = pcall(require, 'packer')
if (not status) then 
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' --LSP
  use 'williamboman/nvim-lsp-installer'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use neovim as a lenguage server to inject LSP diagnostics, code actions and more via lua
  use 'MunifTanjim/prettier.nvim' -- Formatting code LSP client
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame and browse
  use 'L3MON4D3/LuaSnip' -- Snip
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer word
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- completion
  use {
 "kyazdani42/nvim-tree.lua",
 requires = {
   "kyazdani42/nvim-web-devicons",
 },
 cmd = { "NvimTreeToggle", "NvimTreeClose" },
   config = function()
     require("nvim.after.plugins.tree").setup()
   end,
}
end)

