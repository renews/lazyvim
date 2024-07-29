return {
  -- https://www.lazyvim.org/plugins/colorscheme#tokyonightnvim
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "night",
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  --
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = true,
        dim_inactive = true,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },

  { "LazyVim/LazyVim", opts = {
    colorscheme = "carbonfox",
  } },
}
