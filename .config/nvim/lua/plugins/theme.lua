return {
  "echasnovski/mini.base16",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("mini.base16").setup({
      palette = {
        base00 = "#1e1f2e", -- background
        base01 = "#252636", -- lighter background (statuslines, line numbers)
        base02 = "#2a2b3d", -- selection background
        base03 = "#585870", -- comments
        base04 = "#9ea0c0", -- dark foreground (statuslines)
        base05 = "#e4e8ff", -- default foreground
        base06 = "#e4e8ff", -- light foreground
        base07 = "#ffffff", -- light background (rarely used)
        base08 = "#d4708a", -- red — variables, diff deleted    [ansi red]
        base09 = "#e490aa", -- orange — integers, constants     [bright red]
        base0A = "#6dd8f8", -- yellow — classes, search bg      [ansi yellow/sky]
        base0B = "#4dcfbe", -- green — strings, diff inserted   [ansi green/teal]
        base0C = "#6aaae8", -- cyan — support, regex            [ansi cyan/sapphire]
        base0D = "#7eb8ff", -- blue — functions, headings       [ansi blue]
        base0E = "#c5cbff", -- purple — keywords                [ansi magenta/lavender]
        base0F = "#8ac4f0", -- brown — deprecated, embedded tags [bright cyan]
      },
    })
  end,
}
