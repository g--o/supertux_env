#!/bin/bash

. utils.sh

IS_FORK=false
REPO_URL=git@github.com:SuperTux/supertux.git

if [ "$1" == "-h" ]; then
	echo "Usage: ./set-env.sh [-h | -f ] [repo-url]"
	exit
fi

if [ "$1" == "-f" ]; then
	IS_FORK=true
	if [ -z "$2" ]; then
		echo "Usage: ./set-env.sh -f <repo-url>"
		exit
	fi
	REPO_URL=$2
fi

git clone --recursive $REPO_URL

if [ $IS_FORK ]; then
	echo "Adding upstream.."
	cd $BASE_DIR
	git remote add upstream git@github.com:SuperTux/supertux.git
	cd -
fi

echo "Done."

