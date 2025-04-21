return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      highlight_groups = {
        BufferLineFill = { bg = "base" }, 
      }
    })
    vim.cmd("colorscheme rose-pine")
  end
}

