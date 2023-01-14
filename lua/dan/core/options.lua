local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line


-- opt.foldmethod = "indent"
-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom


-- highlight search results
opt.hlsearch = true
opt.incsearch = true

--  show matching brackets when text indicator is over them
opt.showmatch = true


-- No annoying sound on errors
-- opt.noerrorbells = false
-- opt.novisualbell = false
opt.tm = 500



-- Add a bit extra margin to the left
-- opt.foldcolumn = 1

-- Use spaces instead of tabs
opt.expandtab = true

-- Be smart when using tabs 
opt.smarttab = true

-- 1 tab == 4 spaces
opt.shiftwidth = 2 
opt.tabstop = 2

-- linebreak on 500 characters
opt.lbr = true
opt.tw = 500

-- opt.ai = "Auto indent"
-- opt.si = "Smart indent"
opt.wrap = false

-- set to auto read when a file is changed from the outside
opt.autoread = true


-- disable scrollbars (real hackers don't use scrollbars for navigation!)
-- opt.guioptions-="r"
-- opt.guioptions-="R"
-- opt.guioptions-="l"
-- opt.guioptions-="L"


-- opt.guicursor = ""

-- undo options
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- add 8 lines to the bottom of every time
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- adds a column 80px accross
opt.updatetime = 50
-- opt.colorcolumn = "80"
