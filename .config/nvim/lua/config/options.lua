-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.g.lazyvim_picker = "telescope"
vim.o.relativenumber = false
vim.o.ruler = true
vim.o.swapfile = false
--local is_wsl = vim.fn.has("wsl") == 1
--if is_wsl then
--  vim.g.clipboard = {
--    name = "win32yank-wsl",
--    copy = {
--      ["+"] = "/mnt/c/bin/win32yank.exe -i --crlf",
--      ["*"] = "/mnt/c/bin/win32yank.exe -i --crlf",
--    },
--    paste = {
--      ["+"] = "/mnt/c/bin/win32yank.exe -o --lf",
--      ["*"] = "/mnt/c/bin/win32yank.exe -o --lf",
--    },
--    cache_enabled = 0,
--  }
--end
vim.o.title = true
vim.o.titlelen = 0
vim.o.titlestring =
  [[%{buftype == '' ? expand('%:t') : fnamemodify(getcwd(), ':t') .. '/'} (%{fnamemodify(getcwd(), ':~')}) - nvim]]
