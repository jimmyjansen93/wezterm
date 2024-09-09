-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- config.default_prog = {"/Users/jimmy/.cargo/bin/zellij", "a", "main", "||", "/Users/jimmy/.cargo/bin/zellij", "-s", "main"}
-- config.color_scheme = "BlulocoDark"
-- config.color_scheme = "GruvboxDark"
-- config.color_scheme = "tokyonight-storm"
-- config.color_scheme = "Catppuccin Frappe"
config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font("Fira Code")
config.font_size = 16
config.harfbuzz_features = { "zero", "ss05", "ss03", "cv24", "ss07" }
config.use_ime = false
config.use_dead_keys = false
config.enable_tab_bar = false
config.skip_close_confirmation_for_processes_named = {
  "bash",
  "sh",
  "zsh",
  "fish",
  "tmux",
  "zellij",
}
config.keys = {
  {
    key = " ",
    mods = "CTRL",
    action = wezterm.action.SendKey({ key = "F11" }),
  },
}

-- and finally, return the configuration to wezterm
return config
