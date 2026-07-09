return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#0d0d0d",
        dark_bg    = "#0d0d0d",
        darker_bg  = "#060606",
        lighter_bg = "#1f1a12",
        selection  = "#241f16",

        fg         = "#ebdbb2",
        dark_fg    = "#dcd3b1",
        bright_fg  = "#f6f1dd",
        muted      = "#8a8574",

        red        = "#D35F5F",
        orange     = "#d86a29",
        yellow     = "#BBA84A",
        green      = "#7C7C7C",
        cyan       = "#108A8E",
        blue       = "#7f9080",
        purple     = "#c98ae0",
        brown      = "#c9926b",

        bright_red    = "#ee5340",
        bright_yellow = "#d5b64b",
        bright_green  = "#C2B280",
        bright_cyan   = "#677D8E",
        bright_blue   = "#6B7AA8",
        bright_purple = "#8f6fd6",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
