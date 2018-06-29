#!/usr/bin/bash

if [ $# -eq 1 ]; then
	cp ~/.config/custom_scripts/template.py "$(pwd)/$1.py"
else
	echo "Expected 1 argument, saw $#"
fi

