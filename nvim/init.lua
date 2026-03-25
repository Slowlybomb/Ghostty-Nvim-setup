-- Set leader key before lazy
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core options
require("josean.core.options")

-- Keymaps
require("josean.core.keymaps")

-- Lazy.nvim setup
require("josean.lazy")
