return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "catppuccin/nvim", "nvim-tree/nvim-web-devicons" },
  opts = function()
    local catppuccin_lualine = function(flavour)
      local C = require("catppuccin.palettes").get_palette(flavour)
      local O = require("catppuccin").options
      local catppuccin = {}

      local transparent_bg = O.transparent_background and "NONE" or C.mantle

      catppuccin.normal = {
        a = { bg = C.blue, fg = C.mantle, gui = "bold" },
        b = { bg = C.surface0, fg = C.blue },
        c = { bg = transparent_bg, fg = C.text },
      }

      catppuccin.insert = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
      }

      catppuccin.terminal = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
      }

      catppuccin.command = {
        a = { bg = C.peach, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.peach },
      }

      catppuccin.visual = {
        a = { bg = C.mauve, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.mauve },
      }

      catppuccin.replace = {
        a = { bg = C.red, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.red },
      }

      catppuccin.inactive = {
        a = { bg = transparent_bg, fg = C.blue },
        b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
        c = { bg = transparent_bg, fg = C.overlay0 },
      }

      return catppuccin
    end

    return {
      options = {
        theme = catppuccin_lualine("macchiato"),
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },

      sections = {
        lualine_a = {
          {
            'mode',
            separator = { left = '' },
            right_padding = 2
          }
        },
        lualine_b = {
          {
            'branch',
            separator = { right = '' }
          },
        },
        lualine_c = {
          {
            'diff',
            symbols = {added = ' ', modified = ' ', removed = ' '},
          }
          , '%=', 'filename'
        },
        lualine_x = {
          {
            'diagnostics',
            sources = {'nvim_diagnostic'},
            symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
          },
        },
        lualine_y = {
          {
            'filetype',
            separator = { left = '' }
          },
          'progress'
        },
        lualine_z = {
          {
            'location',
            separator = { right = '' },
            left_padding = 2
          },
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end,
}
