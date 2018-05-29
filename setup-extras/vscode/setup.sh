#!/bin/bash

declare -a extensions=(
	vscodevim.vim
	dbaeumer.vscode-eslint
	EditorConfig.EditorConfig
	robertohuertasm.vscode-icons
	azemoh.theme-onedark
	eamodio.gitlens
	kumar-harsh.graphql-for-vscode
	oderwat.indent-rainbow
	zhuangtongfa.material-theme
	esbenp.prettier-vscode
	eg2.tslint
	Shan.code-settings-sync
	CoenraadS.bracket-pair-colorizer
	aaron-bond.better-comments
)

for extension in "${extensions[@]}"
do
	code --install-extension $extension
done
