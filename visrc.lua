require('vis')

-- Global Keybindings
vis:map(vis.modes.NORMAL, '  ', ':set highlight<Enter>') -- Space+Space to clear search highlights
vis:map(vis.modes.NORMAL, '\\w', ':w<Enter>')             -- \w to quick save

-- Window-specific options (Set when a window actually exists)
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command('set number on')
    vis:command('set relativenumber on')
    vis:command('set expandtab on')
    vis:command('set tabwidth 4')
    vis:command('set autoindent on')
    vis:command('set showtabs true')
    vis:command('set theme default')
end)
