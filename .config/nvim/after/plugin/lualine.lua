local custom_solarized = require'lualine.themes.solarized_dark'
-- custom_solarized.normal.a.bg = '#bd856a'

require('lualine').setup {
	options = {
		theme = custom_solarized,
		icons_enabled = false,
	}
}
