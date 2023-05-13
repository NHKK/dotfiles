local o = vim.opt
o.completeopt = { "menu", "menuone", "noselect", "noinsert" }
o.number = true
o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.autoindent = true
o.wrap = true
o.breakindent = true
o.showbreak = string.rep(" ", 3)
o.linebreak = true
o.smartcase = true
o.smartindent = true
o.swapfile = false
o.ignorecase = true
o.hlsearch = false
o.incsearch = true
o.updatetime = 300
o.timeoutlen = 500
o.showtabline = 2
o.scrolloff = 999
o.sidescrolloff = 8
o.showtabline = 2
o.lazyredraw = true
o.laststatus = 2
o.ruler = true
o.wildmenu = true
o.title = true
o.autoread = true
o.mouse = nil
o.splitright = true
o.splitbelow = true
o.clipboard:prepend { 'unnamed', 'unnamedplus' }
o.cmdheight = 0
o.backspace = "indent,eol,start"

--o.undodir = fn.stdpath("data") .. "/undodir" -- set undo directory
o.undofile = false
o.wildignorecase = true
o.wildmode = "full"
o.termguicolors = false

-- Prevent comment
vim.api.nvim_create_autocmd("bufEnter", {
  group = vim.api.nvim_create_augroup("FormatOptions", {}),
  pattern = "*",
  callback = function()
    o.formatoptions:remove { "r", "o" }
  end,
})

