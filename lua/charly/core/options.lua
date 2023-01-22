local opt = vim.opt -- for conciseness
vim.cmd("autocmd!")


vim.scriptencoding = "utf-8"
vim.encoding = "utf-8"
vim.fileencoding = "utf-8"

opt.title = true
opt.hlsearch = true -- Highlight search results
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1 -- Shows better messages
opt.laststatus = 2
opt.scrolloff = 10
--opt.shell = "fish"
opt.backupskip = "/tmp/*,/private/tmp/*"
opt.inccommand = "split"
opt.breakindent = true
opt.ai = true -- Auto indent
opt.si = true -- Smart indent
opt.wrap = false -- No wrap lines
opt.path:append({ "**" }) -- finding files - Search down into subfolders

opt.wildignore:append({ "*/node_modules/*" })
opt.clipboard = 'unnamedplus' --clipboard

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Add asterisks in clock comments
opt.formatoptions:append({ "r" })

-- line numbers
opt.relativenumber = true -- Movements like 5j or 5k
opt.number = true -- Show numbers on the left

-- tabs & indentation
opt.tabstop = 2 -- Tab size of 4 spaces
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Use appropriate number of spaces (no so good for PHP but we can fix this in ft)
opt.autoindent = true

opt.swapfile = false -- Do not leave any backup files

opt.completeopt = { "menu", "menuone", "noselect", "noinsert" } -- Let the user decide about the autocomplete

-- search settings
opt.ignorecase = true -- Search ignoring case
opt.smartcase = true -- Do not ignore case if the search patter has uppercase
opt.mouse = "i" -- Enable mouse on insert mode
opt.showmatch = true -- Enable mouse on insert mode
opt.hidden = true -- Allow multple buffers
opt.smarttab = true

-- cursor line
opt.cursorline = true -- Highlight the current cursor line (Can slow the UI)

-- appearance
opt.termguicolors = true -- Required for some themes
opt.background = "dark"
-- opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5

-- backspace
opt.backspace = { "start,eol,indent" }


-- split windows
--opt.splitright = true
--opt.splitbelow = true

--opt.iskeyword:append("-")
