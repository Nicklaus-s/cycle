#!/bin/sh

set -e

if [ ! -d "Packages" ]; then
	sh scripts/packages.sh
fi

rojo sourcemap default.project.json -o sourcemap.json
curl -O https://raw.githubusercontent.com/JohnnyMorganz/luau-lsp/main/scripts/globalTypes.d.luau

luau-lsp analyze src/ --sourcemap=sourcemap.json --defs=globalTypes.d.lua --ignore=Packages/