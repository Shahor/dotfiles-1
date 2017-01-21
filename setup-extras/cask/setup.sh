#!/bin/bash

declare -a packages=(
	alfred
	firefox
	google-chrome
	1password
	dropbox
	iterm2
	docker
	toggldesktop
	visual-studio-code
	spotify
	slack
	imageoptim
	vlc
	flux
	spectacle
	wireshark
	drop-to-gif
)

for package in "${packages[@]}"
do
	brew cask install $package
done
