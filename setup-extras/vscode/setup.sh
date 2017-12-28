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
	wayou.vscode-todo-highlight
	Shan.code-settings-sync
	CoenraadS.bracket-pair-colorizer
)

for extension in "${extensions[@]}"
do
	code --install-extension $extension
done
