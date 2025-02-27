local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.default_prog = {"powershell.exe"}

-- config.color_scheme = "Materia (base16)"
-- config.color_scheme = 's3r0 modified (terminal.sexy)'
config.color_scheme = 'Darcula (base16)'
-- config.color_scheme = "Arthur"
config.font_size = 16
config.font = wezterm.font "HackGen Console NF"
config.initial_rows = 35
config.initial_cols = 120

config.keys = {
    { key="|", mods="CTRL|SHIFT", action=act.SplitPane { direction="Right" }},
    { key="=", mods="CTRL|SHIFT", action=act.SplitPane { direction="Down" }},
    { key="W", mods="CTRL|SHIFT", action=act.CloseCurrentPane { confirm=false }},
    { key="d", mods="CTRL|SHIFT", action=act.PaneSelect },
    { key="!", mods="CTRL|SHIFT", action=act.ActivateTab(0) },
    { key="\"", mods="CTRL|SHIFT", action=act.ActivateTab(1) },
    { key="#", mods="CTRL|SHIFT", action=act.ActivateTab(2) },
    { key="$", mods="CTRL|SHIFT", action=act.ActivateTab(3) },
    { key="%", mods="CTRL|SHIFT", action=act.ActivateTab(4) },
    { key="&", mods="CTRL|SHIFT", action=act.ActivateTab(5) },
    { key="\'", mods="CTRL|SHIFT", action=act.ActivateTab(6) },
    { key="(", mods="CTRL|SHIFT", action=act.ActivateTab(7) },
    { key=")", mods="CTRL|SHIFT", action=act.ActivateTab(8) },
    { key="c", mods="CTRL|SHIFT", action=act.SpawnCommandInNewTab {args={"cmd.exe"}}},
}

config.launch_menu = {
    { label = "Powershell", args = {"powershell.exe"}, },
    { label = "cmd", args = {"cmd.exe"}, },
    { label = "wsl", args = {"wsl", "--cd", "/home/ubuntu"}, },
}

return config