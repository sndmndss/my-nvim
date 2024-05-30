return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "vimls", "dockerls", 'yamlls', 'marksman', 'lemminx', "bashls" },
    },
  },
  {
      "neovim/nvim-lspconfig",
      lazy = false,
      opts = {
      ensure_installend = {
        'black',
        'debugpy',
        'flake8',
        'pylint',
        'mypy',
        'isort'
      }
  }
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()

      local lspconfig = require("lspconfig")
      lspconfig.solargraph.setup({
      })
      lspconfig.vimls.setup({
      })
      lspconfig.html.setup({
      })
      lspconfig.lua_ls.setup({
      })
      lspconfig.pyright.setup({
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    end,
  },
}
