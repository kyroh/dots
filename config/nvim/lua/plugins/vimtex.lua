return {
  "lervag/vimtex",
  ft = { "tex", "plaintex" },
  init = function()
    vim.g.vimtex_view_method = "zathura" 
    vim.g.vimtex_compiler_method = "pdflatex"

    vim.g.vimtex_mappings_enabled = 1
  end,
}

