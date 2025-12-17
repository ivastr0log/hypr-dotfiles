return {
	"romgrk/barbar.nvim",
	dependensies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("barbar").setup({
			tabpages=false
		})

		vim.keymap.set("n", "<C-n>", ":BufferNext<CR>")
		vim.keymap.set("n", "<C-p>", ":BufferPrevious<CR>")

		vim.keymap.set("n", "<C-q>", ":BufferClose<CR>")

    vim.keymap.set("n", "<C-1>", ":BufferGoto 1<CR>")
    vim.keymap.set("n", "<C-2>", ":BufferGoto 2<CR>")
    vim.keymap.set("n", "<C-3>", ":BufferGoto 3<CR>")
    vim.keymap.set("n", "<C-4>", ":BufferGoto 4<CR>")
    vim.keymap.set("n", "<C-5>", ":BufferGoto 5<CR>")
    vim.keymap.set("n", "<C-6>", ":BufferGoto 6<CR>")
    vim.keymap.set("n", "<C-7>", ":BufferGoto 7<CR>")
    vim.keymap.set("n", "<C-8>", ":BufferGoto 8<CR>")
    vim.keymap.set("n", "<C-9>", ":BufferGoto 9<CR>")
	end,
}
