local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-tree/nvim-tree.lua",   -- File explorer
  "nvim-lualine/lualine.nvim", -- Statusline
  "neovim/nvim-lspconfig",     -- LSP support
  { "rose-pine/neovim", name = "rose-pine" },
  "hrsh7th/nvim-cmp",          -- Autocompletion
  "nvim-treesitter/nvim-treesitter", -- Syntax highlighting
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } }, -- Fuzzy finder
  { "norcalli/nvim-colorizer.lua" },  -- Color highlights
  "tpope/vim-fugitive",        -- Git commands in Vim
  "tpope/vim-commentary",      -- Commenting utility
  "phaazon/hop.nvim",          -- Quick cursor movement
  "gelguy/wilder.nvim",        -- Command-line autocompletion
  "lervag/vimtex",             -- LaTeX support
  "liuchengxu/vista.vim",      -- Tag viewer
  { "stevearc/overseer.nvim", config = function()
      require("overseer").setup({
        task_list = { default_detail = 1 },
        templates = { "builtin" }
      })
    end
  },
  {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
})


vim.g.vimtex_view_method = 'zathura'  -- Change to your preferred PDF viewer
vim.g.vimtex_compiler_latexmk = {
    options = {
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode'
    }
}
