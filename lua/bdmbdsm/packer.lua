return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,}

    use { 'kepano/flexoki-neovim', as = 'flexoki' }
    use { "ellisonleao/gruvbox.nvim" }

    use { 'tpope/vim-fugitive' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'nvim-tree/nvim-web-devicons'}

    use { 'nvim-lualine/lualine.nvim' }

    use { 'NMAC427/guess-indent.nvim' }

    use { 'Vimjas/vim-python-pep8-indent' }

    use { 'nvim-tree/nvim-tree.lua' }

    use { 'airblade/vim-gitgutter' }

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v4.x',
      requires = {
        --- Uncomment the two plugins below if you want to manage the language servers from neovim
        --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- LSP Support
        {'neovim/nvim-lspconfig'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
      }
    }

end)
