#!/bin/bash

create_directory(){
	mkdir demo
}


if ! create_directory; then 
	echo "code is being existed as the directory already exists"
	exit 1
fi

echo "This should not work beacuse the code is interrupted"

