return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#0D0D0D",
				bg_dark = "#0D0D0D",
				bg_highlight = "#b8b8b8",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#ebdbb2",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#c8c4b4",
				-- comment: Line highlight, gutter elements, disabled states
				omment = "#555955",

			-- Accent colors (base08-base0F)
				red = "#C05757", -- Errors / red-brown (fits warm palette)
				orange = "#C18F3F", -- Constants / amber
				yellow = "#4D574E", -- Types / gold-olive
				green = "#a3850e", -- Strings / desaturated gold
				cyan = "#7A6A2C", -- Support / muted olive-gold
				blue = "#6E6A58", -- Functions / brighter gold accent
				purple = "#840084", -- Keywords / soft highlight
				magenta = "#BFA75D", -- Deprecated / dark ochre
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
