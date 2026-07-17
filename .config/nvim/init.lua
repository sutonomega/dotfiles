-- lazy.nvim を読み込む
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("config.options")
require("config.keymaps")

require("lazy").setup("plugins")

require("config.lsp")
