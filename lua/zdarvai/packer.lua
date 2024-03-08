 -- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- yt: https://www.youtube.com/watch?v=w7i4amO_zaE
-- github: https://github.com/ThePrimeagen/init.lua
require("nvim-tree").setup()
require("nvim-tree").setup({
  git = {
    enable = true,
  },
  filters = {
    git_ignored = false,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    no_bookmark = false,
    custom = {},
    exclude = {},
  },
 
})


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end
  })

  -- Autocompletion framework
  use("hrsh7th/nvim-cmp")
  use({
    -- cmp LSP completion
    "hrsh7th/cmp-nvim-lsp",
    -- cmp Snippet completion
    "hrsh7th/cmp-vsnip",
    -- cmp Path completion
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    after = { "hrsh7th/nvim-cmp" },
    requires = { "hrsh7th/nvim-cmp" },
  })
  -- See hrsh7th other plugins for more great completion sources!
  -- Snippet engine
  use('hrsh7th/vim-vsnip')
  -- Adds extra functionality over rust analyzer
  use("simrat39/rust-tools.nvim")

  -- Optional
  use("nvim-lua/popup.nvim")
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }


    use({
      "okuuva/auto-save.nvim",
      config = function()
       require("auto-save").setup {
       }
      end,
    })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('navarasu/onedark.nvim')
  require('onedark').setup {
    style = 'darker'
    }
    require('onedark').load()
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('nvim-lua/completion-nvim')

  use('Shougo/deoplete.nvim')
  use('vim-airline/vim-airline')
  use('davidhalter/jedi-vim')
  use('zchee/deoplete-jedi')
  use('jiangmiao/auto-pairs')
  use("github/copilot.vim")
  use('nvim-tree/nvim-web-devicons')

  
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  require'nvim-web-devicons'.setup {
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}



end)
