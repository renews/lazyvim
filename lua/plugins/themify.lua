return
{
  {
  'lmantw/themify.nvim',
    
    lazy = false,
    priority = 999,

    config = {
      {"diegoulloao/neofusion.nvim", 
        opts = { 
          dim_inactive = true, 
          transparent_mode = true
        }, 
      },
      "kepano/flexoki",
      "scottmckendry/cyberdream.nvim",
      {"Shatur/neovim-ayu",
        opts = {
          overrides = {
            Normal = { bg = "None" },
            NormalFloat = { bg = "none" },
            ColorColumn = { bg = "None" },
            SignColumn = { bg = "None" },
            Folded = { bg = "None" },
            FoldColumn = { bg = "None" },
            CursorLine = { bg = "None" },
            CursorColumn = { bg = "None" },
            VertSplit = { bg = "None" },
          },
        },
      },
      "ellisonleao/gruvbox.nvim",
      "folke/tokyonight.nvim",
      "sho-87/kanagawa-paper.nvim",
      "comfysage/evergarden",
    },
  },
}
