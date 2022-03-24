# load default options before modifying them
config.load_autoconfig()

# command aliases
c.aliases = {
        'src': 'config-source',
        'ce': 'config-edit'
}

# don't show scrollbars
c.scrolling.bar = 'never'

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

# colors
black     = "#ebdbb2"
magenta   = "#b16286"
green     = "#98971a"
highlight = "#1d2021"
red       = "#cc241d"
white     = "#282828"
yellow    = "#d79921"

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'smart'

# completion menu
c.colors.completion.category.bg = magenta
c.colors.completion.category.border.bottom = magenta
c.colors.completion.category.border.top = magenta
c.colors.completion.category.fg = white

c.colors.completion.even.bg = white
c.colors.completion.odd.bg = white
c.colors.completion.fg = black

c.colors.completion.item.selected.bg = yellow
c.colors.completion.item.selected.border.bottom = yellow
c.colors.completion.item.selected.border.top = yellow
c.colors.completion.item.selected.fg = black
c.colors.completion.item.selected.match.fg = white
c.colors.completion.match.fg = yellow

c.completion.scrollbar.width = 0
c.completion.cmd_history_max_items = 10
c.completion.min_chars = 4
c.completion.quick = True
c.completion.shrink = True
c.completion.use_best_match = True

# context menu
c.colors.contextmenu.disabled.bg = white
c.colors.contextmenu.disabled.fg = highlight
c.colors.contextmenu.menu.bg = white
c.colors.contextmenu.menu.fg = black
c.colors.contextmenu.selected.bg = yellow
c.colors.contextmenu.selected.fg = black

# downloads bar
c.colors.downloads.bar.bg = white
c.colors.downloads.error.bg = red
c.colors.downloads.error.fg = white
c.colors.downloads.start.bg = highlight
c.colors.downloads.start.fg = black
c.colors.downloads.stop.bg = green
c.colors.downloads.stop.fg = black

# hints
c.colors.hints.bg = yellow
c.colors.hints.fg = white
c.colors.hints.match.fg = black

# key hints
c.colors.keyhint.bg = black
c.colors.keyhint.fg = white
c.colors.keyhint.suffix.fg = yellow

# messages
c.colors.messages.error.bg = yellow
c.colors.messages.error.border = yellow
c.colors.messages.error.fg = black

c.colors.messages.info.bg = white
c.colors.messages.info.border = white
c.colors.messages.info.fg = black

c.colors.messages.warning.bg = white
c.colors.messages.warning.border = yellow
c.colors.messages.warning.fg = black

# prompt
c.colors.prompts.bg = white
c.colors.prompts.border = black
c.colors.prompts.fg = black

c.colors.prompts.selected.bg = yellow
c.colors.prompts.selected.fg = black

# statusbar
c.colors.statusbar.caret.bg = yellow
c.colors.statusbar.caret.fg = black
c.colors.statusbar.caret.selection.bg = yellow
c.colors.statusbar.caret.selection.fg = white
c.colors.statusbar.command.bg = highlight
c.colors.statusbar.command.fg = black
c.colors.statusbar.command.private.bg = yellow
c.colors.statusbar.command.private.fg = black
c.colors.statusbar.insert.bg = magenta
c.colors.statusbar.insert.fg = white
c.colors.statusbar.normal.bg = white
c.colors.statusbar.normal.fg = black
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.fg = black
c.colors.statusbar.url.hover.fg = magenta

c.statusbar.show = "in-mode"

# tabs
c.colors.tabs.bar.bg = white
c.colors.tabs.even.bg = white
c.colors.tabs.even.fg = black
c.colors.tabs.odd.bg = white
c.colors.tabs.odd.fg = black

c.colors.tabs.selected.even.bg = highlight
c.colors.tabs.selected.even.fg = black
c.colors.tabs.selected.odd.bg = highlight
c.colors.tabs.selected.odd.fg = black

# startpage
c.url.start_pages = '/home/rick/.config/startpage/index.html'
c.url.default_page = '/home/rick/.config/startpage/index.html'
