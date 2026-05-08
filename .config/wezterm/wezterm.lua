local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ── hyperlinks ───────────────────────────────────────────────────────────────
config.hyperlink_rules = wezterm.default_hyperlink_rules()
table.insert(config.hyperlink_rules, {
  regex  = [[\b[tt](\d+)\b]],
  format = "https://example.com/tasks/?t=$1",
})

-- ── font ─────────────────────────────────────────────────────────────────────
config.font      = wezterm.font("MesloLGM Nerd Font Mono")
config.font_size = 14
config.allow_square_glyphs_to_overflow_width = "Never"

-- ── window ───────────────────────────────────────────────────────────────────
config.enable_tab_bar             = false
config.window_decorations         = "RESIZE"
config.window_background_opacity  = 1.0
config.macos_window_background_blur = 20

-- ── dusk colorscheme ─────────────────────────────────────────────────────────
-- analogous blue-slate palette — catppuccin structure, without the rainbow
config.colors = {

  foreground    = '#e4e8ff',
  background    = '#1e1e2e',

  cursor_bg     = '#c5cbff',   -- lavender
  cursor_fg     = '#1e1e2e',
  cursor_border = '#c5cbff',

  -- your original selection style, kept as-is
  selection_fg  = 'none',
  selection_bg  = 'rgba(50% 50% 50% 50%)',

  scrollbar_thumb = '#363750',
  split           = '#2a2b3d',

  ansi = {
    '#1e1e2e',   -- black   → base
    '#d4708a',   -- red     → poppy cool rose
    '#4dcfbe',   -- green   → vivid teal
    '#6dd8f8',   -- yellow  → sky (warnings)
    '#7eb8ff',   -- blue    → main accent
    '#c5cbff',   -- magenta → lavender
    '#6aaae8',   -- cyan    → sapphire
    '#cdd6f4',   -- white   → subtext1
  },

  brights = {
    '#363750',   -- bright black  → surface1
    '#e490aa',   -- bright red
    '#6edfd0',   -- bright green
    '#a0e8ff',   -- bright yellow → sky bright
    '#a0c4ff',   -- bright blue
    '#d8dcff',   -- bright magenta
    '#8ac4f0',   -- bright cyan
    '#e4e8ff',   -- bright white  → text
  },
}

-- ── keys ─────────────────────────────────────────────────────────────────────
config.keys = {
  {
    key    = "k",
    mods   = "CMD",
    action = wezterm.action.SendString("clear\r"),
  },
}

return config
