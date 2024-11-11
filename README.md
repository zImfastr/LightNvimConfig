# LightNvimConfig

## ! README isnt finished and is still worked on !
## ! Only tested on Windows sofar please Report any bugs !

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

### INSTALL

Linux & MacOs:

git clone https://github.com/zImfastr/LightNvimConfig ~/.config/nvim && nvim

Windows:

cmd : git clone https://github.com/zImfastr/LightNvimConfig %USERPROFILE%\AppData\Local\nvim && nvim

Powershell: git clone https://github.com/zImfastr/LightNvimConfig $ENV:USERPROFILE\AppData\Local\nvim && nvim

if the above paths dont work, try these paths:

C:\Users\%USERNAME%\AppData\Local\nvim

C:\Users\$ENV:USERNAME\AppData\Local\nvim


After cloning the repository run these commands in nvim:

":PackerSync" - to install all PlugIns

open /lua/core/Plugin_config/lsp_config.lua and run ":so%"

close and reopen nvim


### This config is just a starting point and is a completely customizable modular build:

nvim folder is located under:

Windows: ~/Appdata/Local/nvim/
MacOs : ~/.config/nvim
Linux: ~/.config/nvim

/lua/core -> directory for all plugin related files

plugins.lua -> install plugins via packer

plugin_config -> Directory for all plugin config files

init.lua -> init.lua

## Language Server Protocol

1. To add Lsp's open lsp_config.lua located in your nvim folder under /core/lua/Plugin_config/ with nvim

2. Add your lsp in:

3. ensure_installed = { "lua_ls", "pylsp", "ts_ls", "your_lsp_here"}

4. For a list of Language Server Protocols type ":Mason" in the command line

5. Scroll until you see the require("lspconfig") functions

6. add youre lsp with require("lspconfig").youre_lsp_here.setup({})

7. write the file with ":w" and source it with ":so%"

8. your lsp should now automatically attach to youre buffer, to check if the lsp is attached to youre buffer use ":LspInfo"

### Installed and Configured Language Server Protocols

- Python (Pyright, PYLSP)

- Typescript (tp_ls)

- Lua (lua_ls)

- HTML

- CSS


## Themes & Plugins

Install new Plugins or themes:

This Nvim Config uses Packer to install Plugins/Themes

1. open /lua/core/plugins.lu

2. add a new plugin/theme with use "your.repo" (e.g use "nvim-tree.nvim-tree.lua")

3. write with ":w" and source with ":so%" finaly run ":PackerSync" to install the Plugin/Theme

4. If you installed a theme run ":colo your_theme" to activate it, standard theme is cyberdream

To automatically use your theme when starting nvim:

1. go into init.lua and change "colo cyberdream" to "colo" followed by your theme

2. go into /lua/core/plugin_config/lualine.lua and change theme into your theme


# Keybinds:

the keybinds for plugins can be configured in the plugin config file

to switch between splits (for example between nvim tree and buffer) :   "ctrl + w" plus direction (hjkl)


## Default Keybinds for plugin:


### Autocompletion

Insert Mode:

scroll through options "ctrl + j/k"

Confirm "<CR>" (Enter)

Complete "ctrl + o"

Normal Mode:

hover "<shift> k"

definition "<space>D"

references "gr"

### Nvim-tree:

open tree "ctrl + n"

focus tree "spacebar"


### Telescope:

find files "ctrl + p"

old files "scpacebar spacebar"

find grep "spacebar + fg"

help tags "spacebar + fh"

