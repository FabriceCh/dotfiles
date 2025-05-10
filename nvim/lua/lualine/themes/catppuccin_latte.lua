local colors = {
	black = "#4C4F69",
	white = "#EFF1F5",
	maroon = "#e64553",
	green = "#40A02B",
	lavender = "#7287FD",
	rosewater = "#DC8A78",
	darkgray = "#6C6F85",
	gray = "#ccd0da",
	crust = "#dce0e8",
	mauve = "#8839ef",
}

return {
	normal = {
		a = { bg = colors.lavender, fg = colors.white, gui = "bold" },
		b = { bg = colors.gray, fg = colors.black },
		c = { bg = colors.crust, fg = colors.darkgray },
	},
	insert = {
		a = { bg = colors.green, fg = colors.white, gui = "bold" },
		b = { bg = colors.gray, fg = colors.black },
		c = { bg = colors.crust, fg = colors.darkgray },
	},
	visual = {
		a = { bg = colors.mauve, fg = colors.white, gui = "bold" },
		b = { bg = colors.gray, fg = colors.black },
		c = { bg = colors.crust, fg = colors.darkgray },
	},
	replace = {
		a = { bg = colors.maroon, fg = colors.white, gui = "bold" },
		b = { bg = colors.gray, fg = colors.black },
		c = { bg = colors.crust, fg = colors.darkgray },
	},
	command = {
		a = { bg = colors.rosewater, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.crust, fg = colors.black },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
		b = { bg = colors.darkgray, fg = colors.gray },
		c = { bg = colors.darkgray, fg = colors.gray },
	},
}
