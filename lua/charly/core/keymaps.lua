vim.g.mapleader = " "

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",


local keymap = vim.keymap -- for conciseness




-- general keymaps

--keymap.set("i", "jk", "<ESC>")

-- Some shortcuts to make the conf file more clean
local opts = { noremap = true, silent = true }
local expr = { noremap = true, silent = true, expr = true }

-- Don't jump when using *
--keymap.set("n", "*", "*<C-o>", opts)

-- Tabmove
keymap.set("n", "<A-Left>", ":-tabmove<CR>", opts)
keymap.set("n", "<A-Right>", ":+tabmove<CR>", opts)

keymap.set("n", "<C-I>", "<C-I>", { noremap = true })

keymap.set("n", "<C-I>", "<C-I>", { noremap = true })

-- Keep search matches in the middle of the window
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Reselect visual block after indent/outdent
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)


keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_dh')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })

keymap.set("n", "tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "tp", ":tabp<CR>") -- go to previous tab
keymap.set("n", "tx", ":tabclose<CR>") -- close current tab

-- Split window
keymap.set("n", "ss", ":split<Return>", { silent = true })
keymap.set("n", "sv", ":vsplit<Return>", { silent = true })
-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "s<right>", "<C-w>l")

-- Movements between panes
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")
keymap.set("", "sx", ":close<CR>") -- close current split window

-- Resize windows with Shift+<arrow>
keymap.set("n", "<S-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<S-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Move line up and down with J/K

keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)

--keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
--keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
--keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width

--keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab

--plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>te", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>tf", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
