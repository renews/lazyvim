return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "typescript-language-server",
        "css-lsp",
        "tailwindcss-language-server",
        "biome", -- Fast formatter/linter
        "ruby-lsp",
        "erlang-ls",
        "rubocop",
        "erb-linter",
        "erb-formatter",
      })
    end,
  },
}
