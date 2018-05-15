#!/bin/bash

declare -a packages=(
	the_silver_searcher
	git # latest version
	tree
	coreutils # some additional unix tools
	findutils
	zsh # get latest version
	jump # because its awesum
	ruby # Use latest version
	httpie
	jq # Json formatter
	stern
	asciinema # Terminal recorder
)

brew update
for package in "${packages[@]}"
do
	brew install $package 2>&1 | grep -v 'already installed'
done
