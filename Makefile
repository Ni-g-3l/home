.PHONY: setup build test update install

BINARY_NAME=home

setup:
	@curl -fsSL https://raw.githubusercontent.com/vlang/v/master/install.sh | bash -s
	@git clone git@github.com:Ni-g-3l/home.git

build:
	@v . -o $(BINARY_NAME)

test:
	@v test .

update:
	@git pull

install: build
	@mv $(BINARY_NAME) ~/.local/bin/$(BINARY_NAME)
