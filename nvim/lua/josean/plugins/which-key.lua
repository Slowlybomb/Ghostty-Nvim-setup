return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.setup({
      preset = "modern",
      delay = 300,
      icons = {
        rules = false,
      },
    })

    -- Register group names for better organization
    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>h", group = "Git Hunk" },
      { "<leader>n", group = "Clear" },
      { "<leader>s", group = "Split" },
      { "<leader>t", group = "Tab" },
      { "<leader>w", group = "Save" },
      { "<leader>x", group = "Trouble" },
    })
  end,
}
