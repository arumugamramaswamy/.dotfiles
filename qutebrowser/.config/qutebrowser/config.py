# Open every tab as a new window, Vimb style
c.tabs.tabs_are_windows = True
c.tabs.show = "multiple"
c.tabs.last_close = "close"

c.auto_save.session = True
c.scrolling.smooth = True
c.session.lazy_restore = True
c.content.autoplay = False

# Better default fonts
c.fonts.web.family.standard = "Bitstream Vera Sans"
c.fonts.web.family.serif = "Bitstream Vera Serif"
c.fonts.web.family.sans_serif = "Bitstream Vera Sans"
c.fonts.web.family.fixed = "Fira Mono"
c.fonts.statusbar = "18pt Cantarell"

# Use dark mode where possible
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = "never"
# c.colors.webpage.bg = "black"

# Automatically turn on insert mode when a loaded page focuses a text field
c.input.insert_mode.auto_load = True

# Edit fields in Emacs with Ctrl+E
c.editor.command = ["terminator", "-x", "hx", "{file}:{line}:{column}"]

# Make Ctrl+g quit everything like in Emacs
# Scale pages and UI better for hidpi
config.bind('<Ctrl-g>', 'mode-leave', mode='insert')
config.bind('<Ctrl-g>', 'mode-leave', mode='command')
config.bind('<Ctrl-g>', 'mode-leave', mode='prompt')
config.bind('<Ctrl-g>', 'mode-leave', mode='hint')

# Tweak some keybindings
config.unbind('d') # Don't close window on lower-case 'd'
config.bind('yy', 'yank')

# Vim-style movement keys in command mode
config.bind('<Ctrl-j>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-k>', 'completion-item-focus --history prev', mode='command')

# More binding hints here: https://gitlab.com/Kaligule/qutebrowser-emacs-config/blob/master/config.py

# Load the autoconfig file (quteconfig.py)
config.load_autoconfig()

