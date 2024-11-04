-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require('telescope').setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  }
})

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

vim.g.tmux_navigator_no_mappings = 1
