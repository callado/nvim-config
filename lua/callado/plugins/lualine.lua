return {
	"nvim-lualine/lualine.nvim",
	requires = { "nvim-tree/nvim-web-devicons", opt = true },
	lazy = false,
	priority = 800,
	config = function()
		local theme = require("lualine.themes.rose-pine")
		local modes = {
			"normal",
			"insert",
			"visual",
			"replace",
			"command",
			"inactive",
		}
		for _, mode in ipairs(modes) do
			theme[mode].c.bg = "NONE"
		end

		require("lualine").setup({
			options = {
				theme = theme,
			},
		})
	end,
}
