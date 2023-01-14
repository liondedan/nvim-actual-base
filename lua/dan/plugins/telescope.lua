-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = {
  },
})


local keymap = vim.keymap -- for conciseness
local builtin = require('telescope.builtin')

keymap.set('n', '<leader>j', builtin.git_files, {}) -- find files within current git directory, respects .gitignore
keymap.set('n', '<leader>ja', builtin.find_files, {}) -- find files within current working directory

-- keymap.set('n', '<leader>g', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>ga", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory


telescope.load_extension("fzf")
