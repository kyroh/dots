return {
  "akinsho/bufferline.nvim",
  event = "ColorScheme",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local highlights = require("rose-pine.plugins.bufferline")
    require("bufferline").setup {
      options = {
        mode = "buffers",
        separator_style = "thin", -- slanted tabs
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
      highlights = highlights,
    }
  end,
}


