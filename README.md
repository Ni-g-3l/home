# Home CLI Wrapper

A simple CLI wrapper for [home-manager](https://github.com/nix-community/home-manager) that makes managing your home-manager configuration more convenient.

## Overview

[Home-manager](https://github.com/nix-community/home-manager) is a manager for your user configuration written in [Nix](https://nix.dev/manual/nix/2.18/introduction.html). This project provides a lightweight CLI wrapper to easily trigger home-manager commands without remembering the exact nix commands.

## Prerequisites

- [Nix](https://nix.dev/manual/nix/2.18/introduction.html) with flakes enabled
- [home-manager](https://github.com/nix-community/home-manager)
- [nixpkgs](https://github.com/NixOS/nixpkgs) - the package repository used by Nix

## Usage

```bash
# Run home-manager switch to apply your configuration
home reload
```

## License

MIT
