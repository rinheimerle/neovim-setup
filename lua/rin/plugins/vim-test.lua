return {
	"vim-test/vim-test",
	config = function()
		local keymap = vim.keymap
		local global = vim.g

		global["test#strategy"] = "neovim_sticky"
		-- disable echoing the test command before running it
		global["test#neovim_sticky#echo_command"] = 0

		-- set keymaps
		keymap.set("n", "<leader>lt", ":TestFile<CR>", { desc = "Run current test file" })
		keymap.set("n", "<leader>ls", ":TestNearest<CR>", { desc = "Run nearest test from cursor location" })
		keymap.set("n", "<leader>la", ":TestLast<CR>", { desc = "Run most recent spec" })
		keymap.set("n", "<leader>aa", ":TestSuite<CR>", { desc = "Run all specs" })
	end,
}
