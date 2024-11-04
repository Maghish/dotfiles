-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.wildignore:append({ "*/node_modules/*", "*/.git/*" })
vim.opt.pumblend = 0

vim.opt.list = false
vim.cmd([[highlight Dash guibg=#202020 gui=bold]])

-- Example of setting borders for all windows and splits
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bg = "NONE" })  -- White border with no background

-- If using split commands, add borders around splits:
-- vim.o.fillchars = "vert:┃,horiz:━,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣"

vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#ffffff" })


-- Windows Clipboard (because Arch is WSL)
vim.opt.clipboard = 'unnamedplus'
vim.g.clipboard = {
    copy = {
        ["+"] = "clip.exe",
        ["*"] = "clip.exe"
    },
    paste = {
        ["+"] = "powershell.exe Get-Clipboard",
        ["*"] = "powershell.exe Get-Clipboard"
    }
}
