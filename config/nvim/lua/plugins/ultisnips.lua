return {
  "SirVer/ultisnips",
  event = "InsertEnter",
  dependencies = {
    "honza/vim-snippets",
  },
  init = function()
    vim.g.UltiSnipsSnippetDirectories = { "UltiSnips", "my_snippets" }

    vim.g.UltiSnipsExpandTrigger = "<Tab>"
    vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
  end,
}

