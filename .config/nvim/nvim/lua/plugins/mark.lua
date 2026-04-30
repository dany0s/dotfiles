return {
  "chentoast/marks.nvim",
  config = function()
    require'marks'.setup {
      -- This shows the marks as signs in the sign column
      signs = true,
      -- Shows the marks next to line numbers
      sign_priority = 10,
    }
  end,
}
