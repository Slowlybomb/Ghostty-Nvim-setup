return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Install parsers
    local parsers = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "markdown",
      "markdown_inline",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "python",
      "rust",
      "go",
    }

    require("nvim-treesitter").install(parsers)

    -- Enable treesitter highlighting for all supported filetypes
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        local ok = pcall(vim.treesitter.start)
        if not ok then
          return
        end
      end,
    })

    -- Enable folding
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        vim.wo[0][0].foldmethod = "expr"
        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
      end,
    })

    -- Incremental selection keymaps
    vim.keymap.set("n", "<C-space>", function()
      require("vim.treesitter.incremental_selection").init_selection()
    end, { desc = "Init treesitter selection" })

    vim.keymap.set("x", "<C-space>", function()
      require("vim.treesitter.incremental_selection").node_incremental()
    end, { desc = "Increment treesitter selection" })

    vim.keymap.set("x", "<bs>", function()
      require("vim.treesitter.incremental_selection").node_decremental()
    end, { desc = "Decrement treesitter selection" })
  end,
}
