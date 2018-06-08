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
	charles
	wireshark
	the-unarchiver
	sequel-pro
	sketch
	font-fira-code
	station
	insomnia
	robo-3t
	reaper
	kap
)

for tap in "${taps[@]}"
do
	brew tap $tap
done

for package in "${packages[@]}"
do
	brew cask install $package
done
