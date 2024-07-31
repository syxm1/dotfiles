-- init.lua
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"cpp", "c", "lua", "python"}, -- or "all" to install all supported parsers
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- Add more configurations as needed
}

-- Optionally, you can install individual parsers if needed:
local parsers = require'nvim-treesitter.parsers'
parsers.get_parser_configs().cpp.filetype_to_parsername = {"cpp"}
require'nvim-treesitter.install'.ensure_installed({'cpp'})
