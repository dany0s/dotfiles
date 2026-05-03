local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ── hyperlinks ───────────────────────────────────────────────────────────────
config.hyperlink_rules = wezterm.default_hyperlink_rules()
table.insert(config.hyperlink_rules, {
  regex  = [[\b[tt](\d+)\b]],
  format = "https://example.com/tasks/?t=$1",
})

-- ── font ─────────────────────────────────────────────────────────────────────
config.font      = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

-- ── window ───────────────────────────────────────────────────────────────────
config.enable_tab_bar             = false
config.window_decorations         = "RESIZE"
config.window_background_opacity  = 1.0
config.macos_window_background_blur = 20

-- ── dusk colorscheme ─────────────────────────────────────────────────────────
-- analogous blue-slate palette — catppuccin structure, without the rainbow
config.colors = {

  foreground    = '#e4e8ff',
  background    = '#1e1f2e',

  cursor_bg     = '#b4befe',
  cursor_fg     = '#1e1f2e',
  cursor_border = '#b4befe',

  -- your original selection style, kept as-is
  selection_fg  = 'none',
  selection_bg  = 'rgba(50% 50% 50% 50%)',

  scrollbar_thumb = '#363750',
  split           = '#2a2b3d',

  ansi = {
    '#1e1f2e',   -- black   → base
    '#c47a85',   -- red     → muted desaturated rose
    '#6a9e9e',   -- green   → teal-shifted
    '#a89a70',   -- yellow  → desaturated sand
    '#89b4fa',   -- blue    → main accent
    '#b4befe',   -- magenta → lavender
    '#7dd5f5',   -- cyan    → sky
    '#cdd6f4',   -- white   → subtext1
  },

  brights = {
    '#363750',   -- bright black  → surface1
    '#d49aa5',   -- bright red
    '#8abebe',   -- bright green
    '#c8ba90',   -- bright yellow
    '#a0c4ff',   -- bright blue
    '#c8d0ff',   -- bright magenta
    '#a0e8ff',   -- bright cyan
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
