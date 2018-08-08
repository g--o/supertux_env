#!/bin/bash

IS_FORK=false
REPO_URL=git@github.com:SuperTux/supertux.git

if [ "$1" == "-f" ]; then
	IS_FORK=true
	if [ -z "$2" ]; then
		echo "Usage: ./set-env.sh -f <repo-url>"
		exit
	fi
	REPO_URL=$2
fi

git clone --recursive $REPO_URL

