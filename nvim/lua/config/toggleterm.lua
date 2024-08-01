-- Lua configuration for toggleterm.nvim
require('toggleterm').setup {
    -- Open terminals in floating mode
    open_mapping = [[<C-\>]],  -- Ctrl + \ for toggling the terminal
    direction = 'float',       -- Set terminal direction to floating

    -- Floating window specific options
    float_opts = {
        border = 'rounded',      -- You can use 'single', 'double', 'shadow', etc.
        width = 80,             -- Width of the floating window
        height = 20,            -- Height of the floating window
        winblend = 20,           -- Transparency of the floating window
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },

    -- You can add more options here as needed
}

-- Optionally, you can map keys to open a floating terminal directly
vim.api.nvim_set_keymap('n', '<C-\\>', [[<cmd>ToggleTerm<CR>]], { noremap = true, silent = true })
