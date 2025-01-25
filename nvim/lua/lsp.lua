local lspconfig = require("lspconfig")

-- Enable language servers
lspconfig.pyright.setup({})         -- Python
lspconfig.ts_ls.setup({})           -- TypeScript/JavaScript (Replaces tsserver)
lspconfig.rust_analyzer.setup({})   -- Rust
lspconfig.gopls.setup({})           -- Go


