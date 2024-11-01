#!/bin/sh

git add .
if [ $? = 0 ]; then
	git commit -m "$1"
	if [ $? = 0]; then
		git push
	fi
fi
