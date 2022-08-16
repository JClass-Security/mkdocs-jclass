#!/bin/sh

project=$(basename `pwd`)

setup () {
	sudo pip install virtualenv
	virtualenv --python=python3 .env
	source .env/bin/activate
	pip install pipx
	px setup
}

init () {
	echo "Happy hacking."
	bro env
}

serve () {
	mkdocs serve -a localhost:4040
}

env () {
	source .env/bin/activate
}

build () {
	mkdocs build --clean
	echo docs.securityj-class.com > docs/CNAME
}

publish () {
	bro build
	git add --all
	git commit -m "updated"
	git push origin master
}

$@
