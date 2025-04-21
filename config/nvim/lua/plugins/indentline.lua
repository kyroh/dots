return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPre",
  config = function()
    require("ibl").setup({
      indent = {
        char = "│", 
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = { "Function", "Label" },
      },
      exclude = {
        filetypes = { "help", "alpha", "dashboard", "nvimtree", "lazy", "mason" },
      },
    })
  end,
}

