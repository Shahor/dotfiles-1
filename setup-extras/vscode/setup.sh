#!/bin/bash

declare -a extensions=(
	vscodevim.vim
	dbaeumer.vscode-eslint
	EditorConfig.EditorConfig
	robertohuertasm.vscode-icons
	azemoh.theme-onedark
	eamodio.gitlens
	kumar-harsh.graphql-for-vscode
)

for extension in "${extensions[@]}"
do
	code --install-extension $extension
done
