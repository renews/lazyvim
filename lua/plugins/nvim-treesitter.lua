return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "lua",
        "elixir",
        "heex",
        "ruby",
        "yaml",
        "xml",
        "regex",
        "typescript",
      })
    end,
  },
}
