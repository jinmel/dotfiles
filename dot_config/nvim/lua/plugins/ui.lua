-- UI plugins
return {
  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "tokyonight",
      },
      tabline = {
        lualine_a = { "buffers" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "tabs" },
      },
      extensions = { "fzf", "neo-tree", "fugitive" },
      sections = {
        lualine_a = {
          { "filename", path = 1 },
        },
      },
    },
  },

  -- Dashboard
  {
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },

  -- Notifications and command line
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = true,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = true,
  },

  -- Colorizer
  {
    "norcalli/nvim-colorizer.lua",
    config = true,
  },

  -- Themes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  { "glepnir/zephyr-nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
}
