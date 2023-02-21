local wezterm = require "wezterm"

return {
	font = wezterm.font('JetBrains Mono', { weight = "Bold", italic = false }),
	font_size = 18.0,
	color_scheme = "Duotone Dark",
	default_prog = { '/bin/zsh', '-l' },
	window_frame ={
		font_size = 14.0,
	},
	tab_bar_at_bottom = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	keys = {
		{
			key = "s",
			mods = "ALT",
			action = wezterm.action.SplitPane {
				direction = "Right",
				size = {
					Percent = 50
				}
			}
		},
		{
			key = "s",
			mods = "ALT|SHIFT",
			action = wezterm.action.SplitPane {
				direction = "Down",
				size = {
					Percent = 50
				}
			}
		},

		{
			key = "x",
			mods = "ALT",
			action = wezterm.action.CloseCurrentPane {
				confirm = false,
			}
		},

	}
}
