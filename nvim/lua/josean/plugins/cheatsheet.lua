return {
  "sudormrfbin/cheatsheet.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("cheatsheet").setup({
      bundled_cheatsheets = true,
      bundled_plugin_cheatsheets = true,
      include_only_installed_plugins = true,
    })

    -- Open cheatsheet
    vim.keymap.set("n", "<leader>?", "<cmd>Cheatsheet<cr>", { desc = "Cheatsheet" })
  end,
}
