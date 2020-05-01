#!/bin/bash

echo "Checking parcel"

if parcel -V > /dev/null; then
	echo "parcel is already installed."
else
	echo "installing parcel"
	if node -v > /dev/null; then
		if npm -v > /dev/null; then
			echo "installing parcel - global"
			npm install -g parcel-bundler
		else
			echo "npm is not installed"
		fi
	else
		echo "node is not installed"
	fi
fi
