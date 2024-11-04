-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opt = { remap = true, silent = true }

keymap.set("n", "<C-t>", vim.cmd.bnext)
keymap.set("n", "<C-t><C-t>", vim.cmd.bprevious)

keymap.set("n", "<C-Down>", ":wincmd j<CR>") -- Focus Pane Down 
keymap.set("n", "<C-Right>", ":wincmd l<CR>") -- Focus Pane Right
keymap.set("n", "<C-Left>", ":wincmd h<CR>") -- Focus Pane Left 
keymap.set("n", "<C-Up>", ":wincmd k<CR>") -- Focus Pane Top

keymap.set("n", "<C-s><C-s>", ":split<CR>") -- Create Pane Down
keymap.set("n", "<C-d><C-d>", ":vsplit<CR>") -- Create Pane Right 
keymap.set("n", "<C-a><C-a>", ":vert topleft vsplit<CR>") -- Create Pane Left
keymap.set("n", "<C-w><C-w>", ":aboveleft split<CR>") -- Create Pane Top 

