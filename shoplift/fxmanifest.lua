fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'm00npants-shoplift'
author 'm00npants'
description 'Shop Lift script compatible with ESX, QBCore, and QBox'
version '1.0.0'

escrow_ignore {
    'shared/config.lua',
    'bridge/loader.lua',
    'bridge/client/*.lua',
    'bridge/server/*.lua',
    'locales/*.json',
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua',
    'bridge/loader.lua'
}

client_scripts {
    'bridge/client/*.lua',
    'client/*.lua'
}

server_scripts {
    'bridge/server/*.lua',
    'server/*.lua'
}

files {
    'locales/*.json'
}

dependencies {
    'ox_lib'
}
dependency '/assetpacks'