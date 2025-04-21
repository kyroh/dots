vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts) -- File explorer
keymap("n", "<Leader>w", ":w<CR>", opts) -- Save file
keymap("n", "<Leader>q", ":q<CR>", opts) -- Quit
keymap("n", "<C-s>", ":w<CR>", opts) -- Save with Ctrl+S
keymap("i", "jk", "<ESC>", opts) -- Exit insert mode
keymap("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts) -- Find files
keymap("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts) -- Live Grep
keymap("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts) -- Find Buffers
keymap("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts) -- Find Help
keymap("n", "<Leader>ll", ":VimtexCompile<CR>", opts) -- Start live compilation
keymap("n", "<Leader>lc", ":VimtexCompileSS<CR>", opts) -- Single compile
keymap("n", "<Leader>.", ":bnext<CR>", opts) -- Next buffer
keymap("n", "<Leader>,", ":bprevious<CR>", opts) -- Previous buffer
keymap("n", "<Leader>bd", ":bd<CR>", opts) -- Previous buffer

