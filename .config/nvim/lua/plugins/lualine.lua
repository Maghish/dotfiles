-- lua/plugins/lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require('lualine')

    local catppuccin_colors = {
      rosewater = '#f5e0dc',
      flamingo = '#f2cdcd',
      pink = '#f5c2e7',
      mauve = '#cba6f7',
      red = '#f38ba8',
      maroon = '#eba0ac',
      peach = '#fab387',
      yellow = '#f9e2af',
      green = '#a6e3a1',
      teal = '#94e2d5',
      sky = '#89dceb',
      sapphire = '#74c7ec',
      blue = '#89b4fa',
      lavender = '#b4befe',
      text = '#cdd6f4',
      subtext1 = '#bac2de',
      subtext0 = '#a6adc8',
      overlay2 = '#9399b2',
      overlay1 = '#7f849c',
      overlay0 = '#6c7086',
      surface2 = '#585b70',
      surface1 = '#45475a',
      surface0 = '#313244',
      base = '#1e1e2e',
      mantle = '#181825',
      crust = '#11111b',
    }

    lualine.setup {
      options = {
        theme = {
          normal = {
            a = { fg = catppuccin_colors.crust, bg = catppuccin_colors.mauve },      -- Active section colors
            b = { fg = catppuccin_colors.text, bg = catppuccin_colors.surface2 },    -- Inactive section colors
            c = { fg = catppuccin_colors.subtext1, bg = catppuccin_colors.base },    -- Third section colors
          },
          insert = { a = { fg = catppuccin_colors.crust, bg = catppuccin_colors.green } },  -- Insert mode
          visual = { a = { fg = catppuccin_colors.crust, bg = catppuccin_colors.peach } },  -- Visual mode
          replace = { a = { fg = catppuccin_colors.crust, bg = catppuccin_colors.red } },   -- Replace mode
          command = { a = { fg = catppuccin_colors.crust, bg = catppuccin_colors.sky } },   -- Command mode
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


