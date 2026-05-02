return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
		build = nil,
    lazy = false,
    config = function()
      require("nvim-treesitter").install({
        "lua",
        "javascript",
        "kotlin",
        "html",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "query",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "InsertEnter",
    opts = {},
  },
}
