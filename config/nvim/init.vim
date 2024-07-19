
" Initialize stuff
set number relativenumber

set clipboard+=unnamedplus

" Keybinds
let mapleader = " "
map <leader>n :NvimTreeToggle<CR>
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>cc :ColorizerToggle <CR>
nnoremap <leader>. :bnext<CR>
nnoremap <leader>, :bprev<CR>


" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Heliferepo/VimUtils'
Plug 'lervag/vimtex'
Plug 'rebelot/kanagawa.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'numToStr/Comment.nvim'
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }

call plug#end()

colorscheme pywal

" Nvim Tree Setup
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:airline_theme = 'angr'
lua require('Comment').setup()

lua << EOF
require("nvim-tree").setup()
require("bufferline").setup{}

EOF


