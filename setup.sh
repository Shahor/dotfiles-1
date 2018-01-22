#!/bin/bash

SETUP_TOOLS="./setup-extras/"
SETUP_SOFTWARE="./setup-extras/brew/"

# Test for devtools presence
which gcc > /dev/null
if [ $? -eq 1 ]
then
	echo "⚠️  Before you can go further you need to install the xcode developer tools (at least)"
	echo "Please do so by running :"
	echo "	xcode-select --install"
	echo "(Its in your clipboard, just paste and press enter 👍 )"
	echo "xcode-select --install" | pbcopy
	exit 0
fi

sudo -v

if [ -d ~/.ssh -a ! -f ~/.ssh/id_rsa.pub ]
then
	echo "ℹ️  I see that you don't yet have a personal ssh key"
	read -p "Do you want me to create one for you (y/n)?" -n 1;

	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		ssh-keygen -t rsa -b 4096
	fi
fi

# Installing extra tools
for file in $SETUP_TOOLS/*.sh
do
	sh $file
done

./setup-extras/brew/setup.sh
./setup-extras/cask/setup.sh
./setup-extras/vscode/setup.sh
./setup-extras/gcloud/tools.sh
./setup-extras/kubernetes/helm.sh

echo "I will now open the app store so you can install the remaining apps"
echo "that I sadly can't install for you 😢  "
open /Applications/App\ Store.app/

./setup-extras/zprezto/setup.sh

chsh -s /bin/zsh
