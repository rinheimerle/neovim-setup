-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x"')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- quit all faster
keymap.set("n", "<leader>qa", ":qa<CR>", { desc = "Quit all windows" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close new tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- barbar
-- TODO why can't i just use this in the barbar file?
keymap.set("n", "<C-,>", "<cmd>BufferPrevious<CR>", { desc = "Move to previous tab" })
keymap.set("n", "<C-.>", "<cmd>BufferNext<CR>", { desc = "Move to next tab" })
keymap.set("n", "<C-<>", "<cmd>BufferMovePrevious<CR>", { desc = "Re-order previous tab" })
keymap.set("n", "<C->>", "<cmd>BufferMoveNext<CR>", { desc = "Re-order next tab" })

-- functions
-- copy current file path
vim.api.nvim_create_user_command("CopyRelativePath", function()
	local path = vim.fn.expand("%:.")
	vim.fn.setreg("+", path)
	vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("CopyFullPath", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("CopyFileName", function()
	local path = vim.fn.expand("%:t")
	vim.fn.setreg("+", path)
	vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- call the Cppath function
keymap.set("n", "<leader>cr", ":CopyRelativePath<CR>", { desc = "Copy relative file path" })
keymap.set("n", "<leader>cp", ":CopyFullPath<CR>", { desc = "Copy full file path" })
keymap.set("n", "<leader>cf", ":CopyFileName<CR>", { desc = "Copy filename" })
