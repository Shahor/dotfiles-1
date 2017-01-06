#!/bin/bash

declare -a extensions=(
	vscodevim.vim
	dbaeumer.vscode-eslint
	EditorConfig.EditorConfig
	robertohuertasm.vscode-icons
	azemoh.theme-onedark
)

for extension in "${extensions[@]}"
do
	code --install-extension $extension
done
