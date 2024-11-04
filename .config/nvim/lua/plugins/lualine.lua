return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require('lualine')

    lualine.setup {
      options = {
        theme = {
          normal = {
            a = { fg = '#EC2D22', bg = '#020101' },  -- Active section colors
            b = { fg = '#FFFFFF', bg = '#1B1D1E' },   -- Inactive section colors
            c = { fg = '#6F6F6F', bg = '#1B1D1E' },   -- Third section colors
          },
          insert = { a = { fg = '#FFFFFF', bg = '#FA521A' } },  -- Insert mode
          visual = { a = { fg = '#FFFFFF', bg = '#EC2D22' } },  -- Visual mode
          replace = { a = { fg = '#FFFFFF', bg = '#9E302B' } },  -- Replace mode
          command = { a = { fg = '#FFFFFF', bg = '#FF6417' } },  -- Command mode
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype', 'encoding', 'fileformat' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'filetype', 'encoding', 'fileformat' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {}
    }
  end
}

