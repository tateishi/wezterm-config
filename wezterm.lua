local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- config.color_scheme = "Materia (base16)"
-- config.color_scheme = 's3r0 modified (terminal.sexy)'
config.color_scheme = 'Darcula (base16)'
-- config.color_scheme = "Arthur"
config.font_size = 16
config.font = wezterm.font "HackGen Console NF"
config.initial_rows = 35
config.initial_cols = 120

return config