local colors = {
	black = "#11111b",
	mantle = "#181825",
	base = "#1e1e2e",
	surface0 = "#313244",
	surface1 = "#45475a",
	surface2 = "#585b70",
	subtext0 = "#a6adc8",
	white = "#cdd6f4",
	maroon = "#eba0ac",
	green = "#a6e3a1",
	lavender = "#b4befe",
	rosewater = "#f5e0dc",
	mauve = "#cba6f7",
}

return {
	normal = {
		a = { bg = colors.lavender, fg = colors.base, gui = "bold" },
		b = { bg = colors.surface0, fg = colors.white },
		c = { bg = colors.mantle, fg = colors.subtext0 },
	},
	insert = {
		a = { bg = colors.green, fg = colors.base, gui = "bold" },
		b = { bg = colors.surface0, fg = colors.white },
		c = { bg = colors.mantle, fg = colors.subtext0 },
	},
	visual = {
		a = { bg = colors.mauve, fg = colors.base, gui = "bold" },
		b = { bg = colors.surface0, fg = colors.white },
		c = { bg = colors.mantle, fg = colors.subtext0 },
	},
	replace = {
		a = { bg = colors.maroon, fg = colors.base, gui = "bold" },
		b = { bg = colors.surface0, fg = colors.white },
		c = { bg = colors.mantle, fg = colors.subtext0 },
	},
	command = {
		a = { bg = colors.rosewater, fg = colors.base, gui = "bold" },
		b = { bg = colors.surface0, fg = colors.white },
		c = { bg = colors.mantle, fg = colors.subtext0 },
	},
	inactive = {
		a = { bg = colors.surface1, fg = colors.subtext0, gui = "bold" },
		b = { bg = colors.surface1, fg = colors.subtext0 },
		c = { bg = colors.surface1, fg = colors.subtext0 },
	},
}
