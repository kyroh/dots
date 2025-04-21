return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6", 
  dependencies = {
    "nvim-lua/plenary.nvim", 
    "nvim-tree/nvim-web-devicons", 
  },
  config = function()
    require("telescope").setup {
      defaults = {
        layout_config = {
          horizontal = { prompt_position = "top" },
        },
        sorting_strategy = "ascending",
        prompt_prefix = "🔍 ",
        selection_caret = " ",
        path_display = { "smart" },
      },
      pickers = {
        find_files = {
          hidden = true
        }
      }
    }
  end,
}

