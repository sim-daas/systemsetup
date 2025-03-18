-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard:append("unnamedplus")

vim.diagnostic.config({
  virtual_text = false, -- Disable virtual text for warnings
})
vim.g.autoformat = false
