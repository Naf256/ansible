require("hybrid").setup({
    terminal_colors = true,
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = false,
        emphasis = true,
        comments = true,
        folds = true,
    },
    strikethrough = true,
    inverse = true,
    transparent = false,
    overrides = function(_, c)
		return {
		["@function.builtin"] = { fg = c.dull_red },
        ["@constructor"] = { fg = c.dull_magenta },
			["@variable"] = { fg = c.dull_white },
			["@variable.builtin"] = { fg = c.dull_red },
			["@variable.parameter"] = { fg = c.dull_yellow },
			["@variable.member"] = { fg = c.dull_cyan },
			["@module.builtin"] = { fg = c.dull_red },
			Type = { fg = c.dull_cyan },
		}
	end,
})
