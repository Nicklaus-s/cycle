#!/bin/sh

set -e

if [ ! -d "Packages" ]; then
	sh scripts/packages.bat
fi

rojo build build.project.json --watch -o %LocalAppData%/Roblox/Plugins/Cycle.rbxm