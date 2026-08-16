return {
  -- Mason для установки LSP серверов
  {
    'mason-org/mason.nvim',
    opts = {},
  },

  -- Интеграция Mason с Neovim LSP
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "rust_analyzer",
        "clangd"
      },
    },
  },

  -- nvim-lspconfig (теперь только как источник конфигов)
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Глобальная конфигурация для всех серверов
      vim.lsp.config('*', {
        root_markers = { '.git', '.gitignore' },
      })

      -- Конкретные серверы
      vim.lsp.config('lua_ls', {})
      vim.lsp.config('pyright', {})
      vim.lsp.config('ts_ls', {})
      vim.lsp.config('rust_analyzer', {})
      vim.lsp.config('clangd', {})

      -- Включаем серверы
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('pyright')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('rust_analyzer')
      vim.lsp.enable('clangd')
    end
  },
}

