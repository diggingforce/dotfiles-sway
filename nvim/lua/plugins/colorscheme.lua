return {
  { "kar9222/minimalist.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "minimalist",
    },
  },

  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.transparent_enabled = true
      require("transparent").setup({
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {
          "NormalFloat",
          "FloatBorder",
          "NvimTreeNormal",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "lualine_c_normal",
          "lualine_c_inactive",
          "SnacksNormal",
          "SnacksBackdrop",
        },
      })
      require("transparent").clear()

      vim.api.nvim_set_hl(0, "Directory", { fg = "#82aaff" })
      vim.api.nvim_set_hl(0, "SnacksPickerDirectory", { fg = "#d9d7d6", bold = true })
      vim.api.nvim_set_hl(0, "SnacksPickerTree", { fg = "#383838" })
      vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#666666" })
      vim.api.nvim_set_hl(0, "SnacksPickerPathIgnored", { fg = "#484848", italic = true })
    end,
  },
}
