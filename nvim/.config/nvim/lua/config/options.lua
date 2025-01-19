local opt = vim.opt

vim.g.have_nerd_font = true

-- appearance
--
opt.background = 'dark'
opt.cursorline = true -- highlights current line
opt.termguicolors = true

-- Line Numbers
--
opt.number = true
opt.relativenumber = true

-- Split Options
--
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = 'screen'

-- Formatting
--
opt.wrap = false
opt.scrolloff = 999
opt.scrolloff = 10
opt.clipboard = 'unnamedplus'
opt.virtualedit = 'block' -- allow visual block to select empty spaces
opt.shiftround = true
opt.sidescrolloff = 10 -- columns of context
opt.signcolumn = 'yes' -- always show sign column

-- Tabs
--
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

-- Commands
--
opt.inccommand = 'split'
opt.ignorecase = true

-- Misc
--
opt.winminwidth = 5
opt.foldlevel = 99
opt.breakindent = true
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 300
opt.list = false
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.conceallevel = 1

-- popup
--
opt.pumheight = 20 -- maximum number of entries in a popup
opt.shortmess:append { W = true, I = true, c = true, C = true }

-- typing
--
opt.backspace = 'indent,eol,start' -- backspace
-- opt.clipboard:append("unnamedplus") -- sync with system clipboard
opt.completeopt = 'menu,menuone,noselect' -- Insert mode completion
opt.iskeyword:append '-' -- declare that '-' is not a separator
opt.smartindent = true -- insert indents automatically
opt.softtabstop = 2
opt.spelllang = { 'en', 'ru' } -- check spelling for these languages
opt.tabstop = 2 -- number of spaces tabs count for
opt.wildmode = 'longest:full,full' -- command-line completion mode

-- search & replace
--
opt.grepprg = 'rg --vimgrep' -- use rg by default
opt.hlsearch = false
opt.ignorecase = true -- ignore case
opt.incsearch = true
opt.smartcase = true -- don't ignore case with capitals

-- works only on v0.10
if vim.fn.has 'nvim-0.10' == 1 then
  opt.smoothscroll = true
end
