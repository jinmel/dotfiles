-- UI plugins
return {
  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- File tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
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
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    options = { parsers = { css = true, css_fn = true } },
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
