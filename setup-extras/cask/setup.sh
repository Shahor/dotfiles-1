#!/bin/bash

declare -a taps=(
	caskroom/fonts
)

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
	simple-comic
	sketch
	istat-menus
	font-fira-code
	station
)

for tap in "${taps[@]}"
do
	brew tap $tap
done

for package in "${packages[@]}"
do
	brew cask install $package
done
