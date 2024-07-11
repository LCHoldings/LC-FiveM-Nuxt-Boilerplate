fx_version 'cerulean'
game 'gta5'

author 'LC'
description 'FiveM Nuxt UI Boilerplate'
version '1.0.0'

client_scripts { "client/c_*.lua" }

server_scripts { "server/s_*.lua" }

shared_scripts { "config/*.lua" }

ui_page "html/dist/index.html"

files {
    "html/dist/index.html",
    "html/dist/assets/*.*",
}

-- Only really needed if you're gonna use escrow
lua54 'yes'