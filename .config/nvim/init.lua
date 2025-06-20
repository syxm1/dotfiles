vim.g.mapleader = " "

local function load_config_files()
	local configs_path = vim.fn.stdpath("config") .. "/lua/configs"
	local config_files = vim.fn.glob(configs_path .. "/*.lua", false, true)
	for _, file in ipairs(config_files) do
		local filename = vim.fn.fnamemodify(file, ":t:r")
		require("configs." .. filename)
	end
end

load_config_files()

vim.opt.clipboard = "unnamedplus"

-- make sure win32yank is installed
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
