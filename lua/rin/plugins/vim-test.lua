return {
	"vim-test/vim-test",
	config = function()
		-- set keymaps
		local keymap = vim.keymap
		local global = vim.g

		global.strategy = "neovim_sticky"

		keymap.set("n", "<leader>lt", ":TestFile<CR>", { desc = "Run current test file" })
		keymap.set("n", "<leader>ls", ":TestNearest<CR>", { desc = "Run nearest test from cursor location" })
		keymap.set("n", "<leader>la", ":TestLast<CR>", { desc = "Run most recent spec" })
		keymap.set("n", "<leader>aa", ":TestSuite<CR>", { desc = "Run all specs" })
	end,
}
