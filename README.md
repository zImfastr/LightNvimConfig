# LightNvimConfig

## ! This config isn't finished, im still adding some plugins ! 
## ! README isnt finished and is still worked on !

### A Light Nvim Config including:

- Telescope

- Treesitter

- cyberdream (theme)

- gruvbox (theme)

- nvim-tree

- lualine

- Fine-CmdLine

- Lsp Configuratiion

- Autocompletions

### This config is just a starting point and is a completely customizable modular build:

/lua/core -> directory for all plugin related files

plugins.lua -> install plugins via packer

plugin_config -> Directory for all plugin config files

init.lua -> init.lua

### LSP:

currently there are 5 lsps configured, tutorial on adding new ones is coming:

- Python (Pyright, PYLSP)

- Typescript (tp_ls)

- Lua (lua_ls)

- HTML

- CSS


### If you want to change the theme:

1. go into init.lua and change "colo cyberdream" to "colo" followed by your theme

2. go into /lua/core/plugin_config/lualine.lua and change theme into your theme


# Keybinds:

the keybinds for plugins can be configured in the plugin config file

to switch between splits (for example between nvim tree and buffer) :   "ctrl + w" plus direction (hjkl)


## Default Keybinds for plugin:


### Nvim-tree:

open tree "ctrl + n"

focus tree "spacebar"


### Telescope:

find files "ctrl + p"

old files "scpacebar spacebar"

find grep "spacebar + fg"

help tags "spacebar + fh"

