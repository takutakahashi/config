vim.cmd[[packadd packer.nvim]]
require'packer'.startup(function()
 use'w0ng/vim-hybrid' 
 use{'wbthomason/packer.nvim', opt = true}
 use'scrooloose/nerdtree'
 use{'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' }, run = './install --bin'}
end)
