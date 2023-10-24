return {
	"nvim-lualine/lualine.nvim",
	requires = { "nvim-tree/nvim-web-devicons", opt = true },
	lazy = false,
	priority = 800,
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			-- set an empty statusline till lualine loads
			vim.o.statusline = " "
		else
			-- hide the statusline on the starter page
			vim.o.laststatus = 0
		end
	end,
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
