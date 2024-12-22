return {
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "codecompanion", "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          codecompanion = {
            name = "CodeCompanion",
            module = "codecompanion.providers.completion.blink",
            enabled = true,
          },
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
  },
}
