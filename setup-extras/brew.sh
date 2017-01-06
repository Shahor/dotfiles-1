#!/bin/sh

which brew > /dev/null

if [ $? -eq 1 ]
then
	echo "ℹ️  Installing homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew cask
	brew doctor
fi
