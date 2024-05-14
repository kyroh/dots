
" Initialize stuff
set relativenumber

colorscheme main


if (has("termguicolors"))
  set termguicolors
endif

set clipboard+=unnamedplus


" Keybinds
nnoremap j k
nnoremap k j
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> <C-w>w
nnoremap <C-S-C> "+yy
vnoremap <C-S-C> "+y


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

call plug#end()

