require("catppuccin").setup({
  flavour = "mocha",
  integrations = {
    nvimtree = true,
    treesitter = true,
    cmp = true,
    telescope = true,
  }
})

vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd("ColorizerAttachToBuffer")


