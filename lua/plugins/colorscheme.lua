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
  --https://github.com/diegoulloao/neofusion.nvim?tab=readme-ov-file#4-configuration-
  -- { "diegoulloao/neofusion.nvim", priority = 1000, config = true, opts = { opts = { transparent_mode = true } } },
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
  --
  { "LazyVim/LazyVim", opts = {
    colorscheme = "carbonfox",
  } },
}
