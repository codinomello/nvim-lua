return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,    -- Carrega o plugin imediatamente (não sob demanda)
    priority = 1000, -- Garante que ele carregue antes de outros plugins
    config = function()
      -- Opcional: Configurações personalizadas do tema
      vim.g.gruvbox_material_background = "hard"     -- Opções: "hard", "medium", "soft"
      vim.g.gruvbox_material_foreground = "material" -- Opções: "material", "mix", "original"
      vim.g.gruvbox_material_enable_italic = 1       -- Habilita itálico (0 para desabilitar)
      vim.g.gruvbox_material_better_performance = 1  -- Melhora a performance

      -- Define o tema
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
}

