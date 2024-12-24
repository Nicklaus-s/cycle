#!/bin/sh

set -e

aftman install

wally install

rojo sourcemap default.project.json -o sourcemap.json
wally-package-types Packages --sourcemap sourcemap.json