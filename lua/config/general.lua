-- use space as a leader
vim.g.mapleader = " "
vim.o.mouse = ""

-- set some nice theme
vim.cmd [[colorscheme vscode]]

-- show relative line numbers in each window
-- and use number column for signs
vim.wo.number         = true
vim.wo.relativenumber = true
vim.wo.signcolumn     = 'number'

-- for extra safety don't execute modlines
vim.o.modeline = false

-- highlight the line with the cursor
vim.o.cursorline = true

-- try to keep extra 8 lights below/above the cursor on the screen
vim.o.scrolloff = 4

-- don't display the :intro
vim.opt.shortmess:append("I")

-- don't beep on me
vim.o.visualbell = true

-- :vsp and :sp behavior
vim.o.splitbelow = true
vim.o.splitright = true

-- don't redraw while executing macros, etc.
vim.o.lazyredraw = true

-- when changing (normal c) put $ on word boundary and keep it visible
vim.opt.cpoptions:append("$")

-- allow switching between buffers without saving
vim.o.hidden = true

-- friendlier, magic regexps
vim.o.magic = true

-- search incrementally, with highlighting and preview
vim.o.hlsearch = true
vim.o.incsearch = true

-- enable smartcase = ignorecase if there are no uppercase chars
vim.o.ignorecase = true
vim.o.smartcase = true

-- when inserting a bracket - flash the matching one
vim.o.showmatch = true
vim.opt.matchpairs:append("<:>")

-- don't wrap displayed text
vim.o.wrap = false

-- don't create a backup when overwritting or the swapfile
vim.o.writebackup = false
vim.o.swapfile = false

-- resize splits to equal size when resizing vim
vim.api.nvim_create_autocmd("VimResized", {
    group = au_group,
    callback = function()
        vim.cmd [[wincmd =]]
    end
})

-- jump to last know position in the file
vim.api.nvim_create_autocmd("BufReadPost", {
    group = au_group,
    callback = function() vim.cmd [[silent! normal! g`"]] end
})

-- blink the yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = au_group,
    callback = function() vim.highlight.on_yank { on_visual = false } end
})

-- set the default indent parameters
local function default_indent()
    vim.bo.textwidth = 80
    vim.bo.expandtab = true
    vim.bo.sw = 0
    vim.bo.sts = -1
    vim.bo.ts = 4
end

vim.api.nvim_create_autocmd("BufReadPost", {
    group = au_group,
    callback = default_indent,
})
vim.api.nvim_create_autocmd("BufNewFile", {
    group = au_group,
    callback = default_indent,
    once = true,
})
default_indent()
