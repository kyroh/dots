set relativenumber

colorscheme main

autocmd VimEnter * NERDTree

if (has("termguicolors"))
  set termguicolors
endif

autocmd BufEnter * HexokinaseTurnOn

let g:Hexokinase_highlighters = ['backgroundfull']

let g:Hexokinase_optInPatterns = [
            \ 'full_hex', 
            \ 'triple_hex', 
            \ 'rgb', 
            \ 'rgba', 
            \ 'hsl', 
            \ 'hsla'
            \ ]

let g:Hexokinase_refreshEvents = ['TextChanged', 'TextChangedI']
let g:Hexokinase_refreshDelay = 1000

nnoremap j k
nnoremap k j
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> <C-w>w

call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}

call plug#end()

