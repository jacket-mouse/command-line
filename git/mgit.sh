#!/bin/sh

git add .
if [ $? = 0 ]; then
	git commit -m "$1"
fi
if [ $? = 0 ]; then
	git push
fi
