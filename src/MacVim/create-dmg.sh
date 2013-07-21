#!/bin/bash

# Minimally tweaked version from https://github.com/jirutka (https://github.com/b4winckler/macvim/pull/26)

# Directory with source files (MacVim.app, Readme.txt, mvim)
SOURCE="build/Release/"

# MacVim version
VERSION="7.4a.035"

# Volume title (i.e. application name)
TITLE="MacVim ${VERSION}"

# Background image
BGIMAGE='./support/background.png'

# Volume icon
ICON="${SOURCE}/MacVim.app/Contents/Resources/MacVim.icns"

# Output .dmg file
DMGFILE="${TITLE}.dmg"

# Path to Andreyvit's create-dmg script 
CREATEDMG="./create-dmg"

$CREATEDMG --volname "${TITLE}" --volicon "${ICON}" --background "${BGIMAGE}" --window-size 650 480 \
	--icon-size 64 --icon MacVim.app 240 360 --icon Readme.txt 80 80 --icon mvim 570 80 --app-drop-link 410 360 \
	"${DMGFILE}" "${SOURCE}"
