-- set <leader> key
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

-- Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
keymap.set("n", "<space>", "/")
keymap.set("n", "<c-space>", "?")

-- Switch CWD to the directory of the open buffer (only works in buffer)
keymap.set("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>")


---------------------
-- General Keymaps
---------------------

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("n", "<C-w>>", ":vertical resize +20<CR>") -- close current split window
keymap.set("n", "<C-w><", ":vertical resize -20<CR>") -- close current split window

-- pastes onto selected value
keymap.set("x", "<leader>p", [["_dP]])

-- yank onto general clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- deletes without copying
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- replaces word vscode style
keymap.set("n", "<leader>d", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- " Open current directory with VSCode
keymap.set("n", "<leader>vs", ":open . -a visual studio code<cr>")

-- " Switch CWD to the directory of the open buffer
-- keymap.set("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>")

-- " Fast saving
-- nmap <leader>w :w!<cr>
keymap.set("n", "<leader>w", ":w!<cr>")

-- Git gutter (Git diff)
-- let g:gitgutter_enabled=1
-- nnoremap <silent> <leader>d :GitGutterToggle<cr>


-- Spell checking
-- Pressing ,ss will toggle and untoggle spell checking
keymap.set("n", "<leader>ss", ":setlocal spell!<cr>")


-- " Return to last edit position when opening files (You want this!)
-- au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
