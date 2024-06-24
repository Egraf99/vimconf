vim.g.mapleader = " "

-- Toggle paste
vim.o.pastetoggle = "<F3>"

-- Unhighlight searching element
vim.api.nvim_set_keymap("n", "<C-h>", ":nohlsearch<cr>", {noremap = true, silent = true})

-- Moving
vim.api.nvim_set_keymap("n", "H", "^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "H", "^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "L", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "L", "$", {noremap = true, silent = true})

-- Neotree
function neotree_prefix() return "<leader>n" end
vim.api.nvim_set_keymap("n", neotree_prefix() .. "f", [[:Neotree action=focus source=filesystem reveal=true position=left<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", neotree_prefix() .. "b", [[:Neotree action=focus source=buffers reveal=true position=left<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", neotree_prefix() .. "g", [[:Neotree action=focus source=git_status position=left<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", neotree_prefix() .. "c", [[:Neotree close<cr>]], {noremap = true, silent = true})

-- Telescope
function telescope_prefix() return "<leader>f" end -- семантика build
vim.api.nvim_set_keymap("n", telescope_prefix() .. "f", [[<cmd>Telescope find_files<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", telescope_prefix() .. "g", [[<cmd>Telescope live_grep<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", telescope_prefix() .. "b", [[<cmd>Telescope buffers<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", telescope_prefix() .. "h", [[<cmd>Telescope help_tags<cr>]], {noremap = true, silent = true})

-- Fine CMD Line
-- vim.api.nvim_set_keymap("n",":", [[<cmd>FineCmdline<cr>]], {noremap = true, silent = true})


-- CMake
function cmake_prefix() return "<leader>b" end -- семантика build
vim.api.nvim_set_keymap("n", cmake_prefix() .. "s", [[<cmd>CMakeStop<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", cmake_prefix() .. "r", [[<cmd>CMakeStop<cr><cmd>CMakeRun main<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", cmake_prefix() .. "c", [[<cmd>CMakeClose<cr>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", cmake_prefix() .. "b", [[<cmd>CMakeBuild<cr>]], {noremap = true, silent = true})
