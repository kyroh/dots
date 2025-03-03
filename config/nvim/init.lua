-- Load core settings
require("core")

-- Load plugins
require("plugins")

-- Load key mappings
require("keymaps")

-- Load UI settings
require("ui")

-- Load LSP configuration (optional)
require("lsp")

require("nvim-tree").setup()

require("colorizer").setup({
  "*", -- Enable for all file types
}, {
  RGB      = true, -- Highlight rgb(255, 0, 0)
  RRGGBB   = true, -- Highlight #ff0000
  names    = false, -- Disable color names like "red"
  RRGGBBAA = true, -- Highlight #ff0000aa
  rgb_fn   = true, -- Enable rgb(123, 45, 67) format
  hsl_fn   = true, -- Enable hsl(240, 100%, 50%) format
  mode     = "background", -- Show colors as background
})

local overseer = require("overseer")
overseer.register_template({
  name = "Run Python (Fixed venv)",
  builder = function()
    local python_bin = "/home/kyroh/repos/midpoint/trading/python/beta/beta/bin/"  -- Change to your venv path
    return {
      cmd = { python_bin },
      args = { vim.fn.expand("%") },
      components = { "default" },
    }
  end,
  condition = {
    filetype = { "python" },
  },
})

