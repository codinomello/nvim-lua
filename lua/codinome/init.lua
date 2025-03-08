-- Configuração básica
vim.opt.number = true          -- Exibe números de linha
vim.opt.relativenumber = true  -- Exibe números relativos
vim.opt.hlsearch = true        -- Destaca as buscas
vim.opt.incsearch = true       -- Pesquisa incremental
vim.opt.ignorecase = true      -- Ignora maiúsculas/minúsculas nas buscas

-- Define o tamanho do tab para 4 espaços
vim.o.tabstop = 4       -- Número de espaços que um TAB representa
vim.o.shiftwidth = 4    -- Número de espaços para indentação automática
vim.o.expandtab = true  -- Converte TABs em espaços

-- Definir a aparência
vim.opt.termguicolors = true   -- Habilita cores 24 bits

-- Configuração de plugins com packer
-- Instalar o packer (gerenciador de plugins)
-- Execute `:PackerSync` depois de configurar para instalar os plugins
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  -- Gerenciador de plugins
  use 'wbthomason/packer.nvim'        -- Necessário para o packer funcionar
  -- Tema
  use 'olimorris/onedark.nvim'        -- OneDark
  -- Plugins adicionais
  use 'neovim/nvim-lspconfig'         -- Configurações do LSP
  use 'hrsh7th/nvim-cmp'              -- Autocompletar
  use 'nvim-telescope/telescope.nvim' -- Pesquisa avançada
end)

vim.cmd([[colorscheme onedark]]) -- Define o tema (exemplo: onedark, gruvbox)

-- Configurar LSP (exemplo com Pyright para Python)
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}

-- Configuração de autocompletar (nvim-cmp)
local cmp = require'cmp'
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
})