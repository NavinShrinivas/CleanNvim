return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'
   -- Apperance : 
   use 'kyazdani42/nvim-web-devicons' -- File icons, done
   use 'nvim-lualine/lualine.nvim' -- Statusline, done
   use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
   }

   -- LSP stuff
   use 'neovim/nvim-lspconfig'
   use { "williamboman/mason.nvim" }
   use {'williamboman/mason-lspconfig.nvim'}
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'
   use { "L3MON4D3/LuaSnip" }

   -- UI utils
   use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'} -- Done
   use "rebelot/kanagawa.nvim" -- No setup, usage in theme.lua
   use "nvim-lua/plenary.nvim" -- done
   use('mrjones2014/smart-splits.nvim') -- done, only mappings
   use 'nvim-telescope/telescope.nvim' -- done, only mappings
   use{
      "nvim-neo-tree/neo-tree.nvim", -- done
      branch = "v2.x",
      requires = { 
         "MunifTanjim/nui.nvim",
      }
   }

   -- Generic utils
   use 'windwp/nvim-autopairs' -- Done, only calling setup function on require
   use 'tpope/vim-surround' -- Done, no setup
   use {
      'numToStr/Comment.nvim', -- Done, only binds
      config = function()
         require('Comment').setup()
      end
   }
   use {
      "startup-nvim/startup.nvim", -- Done, check line below, calls function taht returns a config json
      require("startup").setup(require("pluginsetup/startup"))
   }
   if install_plugins then
      require('packer').sync()
   end
end)
