return {
	--	{
	--		"windwp/nvim-autopairs",
	--		event = "InsertEnter",
	--		config = function()
	--			require("nvim-autopairs").setup({
	--				disable_filetype = { "TelescopePrompt", "vim" },
	--			})
	--		end,
	--	},

	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.pairs").setup()
		end,
	},
}
