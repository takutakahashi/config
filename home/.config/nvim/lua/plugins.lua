vim.cmd[[packadd packer.nvim]]
require'packer'.startup(function()
 use'w0ng/vim-hybrid' 
 use{'wbthomason/packer.nvim', opt = true}
 use'scrooloose/nerdtree'
 use{'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' }, run = './install --bin'}

 ---- for lsp ----
 use 'neovim/nvim-lspconfig'
 use 'williamboman/mason.nvim'
 use 'williamboman/mason-lspconfig.nvim'

 use "hrsh7th/nvim-cmp"
 use "hrsh7th/cmp-nvim-lsp"
 use "hrsh7th/vim-vsnip"
 --- !for lsp ----
end)
