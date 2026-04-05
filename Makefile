.PHONY: setup build update install

BINARY_NAME=home
HOME_REPO_DIR=./home-repo

setup:
	@curl -fsSL https://raw.githubusercontent.com/vlang/v/master/install.sh | bash -s
	@git clone https://github.com/nix-community/home-manager.git $(HOME_REPO_DIR)

build:
	@v build -o $(BINARY_NAME) .

update:
	@cd $(HOME_REPO_DIR) && git pull

install: build
	@mv $(BINARY_NAME) ~/.local/bin/$(BINARY_NAME)
