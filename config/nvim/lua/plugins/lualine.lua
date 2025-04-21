return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, 
  config = function()
	require("lualine").setup {
	  options = {
		theme = "rose-pine",
		icons_enabled = true,
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = true,
	  }
	}
  end
}

