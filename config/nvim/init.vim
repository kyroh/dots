
" Initialize stuff
set number relativenumber

if (has("termguicolors"))
  set termguicolors
endif

set clipboard+=unnamedplus

" Keybinds
let mapleader = " "
nnoremap j k
nnoremap k j
map <leader>n :NERDTreeToggle<CR>
nnoremap <C-b> <C-w>w
nnoremap <C-S-C> "+yy
vnoremap <C-S-C> "+y
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>cc :ColorizerToggle <CR>
nnoremap <silent> <leader>bm :lua require('buffer_manager').toggle_menu()<CR>
nnoremap <silent> <leader>bn :lua require('buffer_manager').next_buffer()<CR>
nnoremap <silent> <leader>bp :lua require('buffer_manager').prev_buffer()<CR>



" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Heliferepo/VimUtils'
Plug 'lervag/vimtex'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
Plug 'rebelot/kanagawa.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'j-morano/buffer_manager.nvim'

call plug#end()

colorscheme kanagawa
