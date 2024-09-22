#!/bin/sh

exec electron /home/louis/Documents/GitHub/EarthLinkLauncher "$@"

export npm_config_target=$(tail /usr/lib/electron/version)
export npm_config_arch=x64
export npm_config_target_arch=x64
export npm_config_disturl=https://electronjs.org/headers[dead link 2023-10-29 ⓘ]
export npm_config_runtime=electron
export npm_config_build_from_source=true
HOME="$srcdir/.electron-gyp" npm install
