--Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

--Custom keymap

-- Scrolling
local keymap = vim.keymap.set
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })
keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })

-- Split
keymap("n", "sh", ":split<Return><C-w>w", { noremap = true, silent = false })
keymap("n", "sv", ":vsplit<Return><C-w>w", { noremap = true, silent = false })

-- Move text up/down while in visual block
keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = false })
keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = false })

-- Indent while in visual mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

