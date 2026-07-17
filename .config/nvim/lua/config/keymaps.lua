vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {
  silent = true,
  desc = "Toggle Neo-tree",
})
