-- ~/test_vimtex.lua
-- 1. Setup basic Vim options
vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/lazy/vimtex") -- Adjust if using a different manager

-- 2. Enable filetype detection (MUST come before plugin loading)
vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

-- 3. Configure VimTeX
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_verbose = 1
vim.g.vimtex_compiler_method = "latexmk"

-- 4. Manually source VimTeX if it exists
local vimtex_path = vim.fn.stdpath("data") .. "/lazy/vimtex/plugin/vimtex.vim"
if vim.fn.filereadable(vimtex_path) == 1 then
	vim.cmd("source " .. vimtex_path)
	print("VimTeX sourced successfully")
else
	print("VimTeX not found at: " .. vimtex_path)
	print("Make sure VimTeX is installed with your plugin manager")
end
