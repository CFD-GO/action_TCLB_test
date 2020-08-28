#!/bin/bash

if test -z "$1"
then
	REPO="CFD-GO/TCLB"
else
	REPO="$1"
	shift
fi

if test -z "$1"
then
	BRANCH="master"
else
	BRANCH="$1"
	shift
fi


echo "Repository: $REPO Branch: $BRANCH"
git clone --branch $BRANCH --depth 1 git@github.com:$REPO.git TCLB

