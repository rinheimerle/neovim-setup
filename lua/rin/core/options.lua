vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assume you want case-sensitive
-- opt.nohl = true -- don't highlight the search values

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
-- terminal stuff
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that the text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- don't put comments in the next new line
vim.cmd([[autocmd BufNewFile,BufRead * setlocal formatoptions-=cro]])
