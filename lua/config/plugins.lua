local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = nil
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    packer_bootstrap = vim.fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd.packadd 'packer.nvim'
end

return require('packer').startup(function(use)
    -- themes
    use 'davidosomething/vim-colors-meh'
    use 'Mofiqul/vscode.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'projekt0n/github-nvim-theme' }
    use { 'sainnhe/edge' }
    use { 'aktersnurra/no-clown-fiesta.nvim' }
    use 'nvim-lua/plenary.nvim'
    --use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    --use 'nvim-telescope/telescope-symbols.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    --use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-surround'
    use 'tpope/vim-unimpaired'
    use 'tversteeg/registers.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'wbthomason/packer.nvim'

    if packer_bootstrap then
        require 'packer'.sync()
    end
end)
