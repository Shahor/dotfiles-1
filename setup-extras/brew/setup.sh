#!/bin/bash

declare -a packages=(
	the_silver_searcher
	git
	tree
	coreutils
	findutils
	zsh
	jump

)

brew update
for package in "${packages[@]}"
do
	brew install $package 2>&1 | grep -v 'already installed'
done
