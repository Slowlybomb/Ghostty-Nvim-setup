return {
  "echasnovski/mini.nvim",
  config = function()
    -- Better Around/Inside textobjects
    require("mini.ai").setup({ n_lines = 500 })

    -- Add/delete/replace surroundings (like parentheses, quotes, etc.)
    require("mini.surround").setup()

    -- Animate cursor movements
    local animate = require("mini.animate")
    animate.setup({
      cursor = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
      },
      scroll = {
        enable = false,
      },
    })
  end,
}
