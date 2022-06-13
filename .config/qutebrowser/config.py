# load default options before modifying them
config.load_autoconfig()

# command aliases
c.aliases = {
        'src': 'config-source',
        'ce': 'config-edit'
}

# don't show scrollbars
c.scrolling.bar = "never"

c.content.geolocation = False

# wait 2 seconds and then delete finished downlaods
c.downloads.remove_finished = 2000

c.downloads.location.directory = '/home/rick/'

# display PDFs in browser
c.content.pdfjs = True

# editor command to use
c.editor.command = ['st', '-e', 'nvim', '{file}']

# tab change keybindings
home_keys = ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l']
for i, key in enumerate(home_keys):
    config.bind(',' + key, 'tab-focus ' + str(i + 1))
config.bind(',;', 'tab-focus -1')

# video playing commands
config.bind(',v', 'spawn mpv {url}')
config.bind(',V', 'hint links spawn mpv {hint-url}')
config.bind(',p', 'hint links spawn add-playlist {hint-url}')

config.bind(',y', 'hint links yank')

# switch F and ;f keybindings
config.bind('F', 'hint links tab-fg')
config.bind(';f', 'hint links tab-bg')

# clear search highlights
config.bind('<Ctrl-l>', 'search')

# colors
c.window.transparent = True # enable transparency

white     = "#ebdbb2"
magenta   = "#b16286"
green     = "#98971a"
highlight = "#df6109"
red       = "#cc241d"
black     = "#282828"
yellow    = "#d79921"

alpha = 0.55
alpha = "" + hex(int(alpha * 0xff))
transBG = "#" + alpha[2:] + "282828"

# c.colors.webpage.bg = transBG
c.colors.webpage.darkmode.enabled = True
# c.colors.webpage.darkmode.algorithm = "lightness-hsl"
# c.colors.webpage.darkmode.threshold.text = 150
# c.colors.webpage.darkmode.threshold.background = 205
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.policy.page = "smart"
c.colors.webpage.preferred_color_scheme = "dark"

# completion menu
c.colors.completion.category.bg = magenta
c.colors.completion.category.border.bottom = magenta
c.colors.completion.category.border.top = magenta
c.colors.completion.category.fg = black

c.colors.completion.even.bg = black
c.colors.completion.odd.bg = black
c.colors.completion.fg = white

c.colors.completion.item.selected.bg = yellow
c.colors.completion.item.selected.border.bottom = yellow
c.colors.completion.item.selected.border.top = yellow
c.colors.completion.item.selected.fg = white
c.colors.completion.item.selected.match.fg = black
c.colors.completion.match.fg = yellow

c.completion.scrollbar.width = 0
c.completion.cmd_history_max_items = 10
c.completion.min_chars = 4
c.completion.quick = True
c.completion.shrink = True
c.completion.use_best_match = True

# context menu
c.colors.contextmenu.disabled.bg = black
c.colors.contextmenu.disabled.fg = highlight
c.colors.contextmenu.menu.bg = black
c.colors.contextmenu.menu.fg = white
c.colors.contextmenu.selected.bg = yellow
c.colors.contextmenu.selected.fg = white

# downloads bar
c.colors.downloads.bar.bg = black
c.colors.downloads.error.bg = red
c.colors.downloads.error.fg = black
c.colors.downloads.start.bg = highlight
c.colors.downloads.start.fg = white
c.colors.downloads.stop.bg = green
c.colors.downloads.stop.fg = white

# hints
c.colors.hints.bg = yellow
c.colors.hints.fg = black
c.colors.hints.match.fg = white

# key hints
c.colors.keyhint.bg = white
c.colors.keyhint.fg = black
c.colors.keyhint.suffix.fg = yellow

# messages
c.colors.messages.error.bg = yellow
c.colors.messages.error.border = yellow
c.colors.messages.error.fg = white

c.colors.messages.info.bg = black
c.colors.messages.info.border = black
c.colors.messages.info.fg = white

c.colors.messages.warning.bg = black
c.colors.messages.warning.border = yellow
c.colors.messages.warning.fg = white

# prompt
c.colors.prompts.bg = black
c.colors.prompts.border = white
c.colors.prompts.fg = white

c.colors.prompts.selected.bg = yellow
c.colors.prompts.selected.fg = white

# statusbar
c.colors.statusbar.caret.bg = yellow
c.colors.statusbar.caret.fg = white
c.colors.statusbar.caret.selection.bg = yellow
c.colors.statusbar.caret.selection.fg = black
c.colors.statusbar.command.bg = highlight
c.colors.statusbar.command.fg = white
c.colors.statusbar.command.private.bg = yellow
c.colors.statusbar.command.private.fg = white
c.colors.statusbar.insert.bg = magenta
c.colors.statusbar.insert.fg = black
c.colors.statusbar.normal.bg = transBG
c.colors.statusbar.normal.fg = white
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.fg = white
c.colors.statusbar.url.hover.fg = magenta

c.colors.statusbar.progress.bg = white
c.colors.statusbar.url.success.http.fg = green
c.colors.statusbar.url.success.https.fg = green
c.colors.statusbar.url.hover.fg = magenta

c.statusbar.position = "bottom"
c.statusbar.show = "always"
c.statusbar.widgets = ['progress', 'keypress', 'url', 'history', 'scroll']

# tabs
c.colors.tabs.bar.bg = transBG
c.colors.tabs.even.bg = transBG
c.colors.tabs.even.fg = white
c.colors.tabs.odd.bg = transBG
c.colors.tabs.odd.fg = white

c.colors.tabs.selected.even.bg = highlight
c.colors.tabs.selected.even.fg = white
c.colors.tabs.selected.odd.bg = highlight
c.colors.tabs.selected.odd.fg = white

c.tabs.position = "bottom"
c.tabs.show = "multiple"


# startpage
c.url.start_pages = '/home/rick/.config/startpage/index.html'
c.url.default_page = '/home/rick/.config/startpage/index.html'
