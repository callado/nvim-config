return {
	"bluz71/vim-nightfly-colors",
	name = "nightfly",
	enabled = false,
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd [[colorscheme nightfly]]
	end,
}
