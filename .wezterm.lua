local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.enable_tab_bar = false
config.color_scheme = "GruvboxDarkHard"
config.font = wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Bold" })

return config
