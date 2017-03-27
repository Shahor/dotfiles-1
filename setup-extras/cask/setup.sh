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
	drop-to-gif
	charles
	wireshark
	the-unarchiver
	sequel-pro
)

for package in "${packages[@]}"
do
	brew cask install $package
done
