return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = false,
    },
    picker = {
      sources = {
        explorer = {
          title = false,
          layout = {
            auto_hide = { "input" },
          },
        },
      },
      icons = {
        files = {
          enabled = true,
          dir = " ",
          dir_open = " ",
          file = "󰈔 ",
        },
        tree = {
          vertical = "│ ",
          middle   = "├╴",
          last     = "└╴",
        },
        git = {
          enabled   = true,
          staged    = "●",
          added     = "",
          deleted   = "",
          ignored   = "◌",
          modified  = "○",
          renamed   = "",
          unmerged  = " ",
          untracked = "•",
        },
      },
    },
  },
}
