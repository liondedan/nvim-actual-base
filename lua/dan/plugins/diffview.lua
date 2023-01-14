local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>`", ":DiffviewOpen<CR>")
keymap.set("n", "<leader>~", ":DiffviewClose<CR>")