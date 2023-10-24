return {
	"mbbill/undotree",
	enabled = false,
	config = function()
		vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)
	end,
}
