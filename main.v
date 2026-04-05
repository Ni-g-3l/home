module main

import core { HomeCommandResult, clean_cmd, list_cmd, reload_cmd }
import os
import cli

fn main() {
	mut result := HomeCommandResult{}

	mut subcommands := [
		reload_cmd(mut result),
		list_cmd(mut result),
		clean_cmd(mut result),
	]

	mut app := cli.Command{
		name:        'Home'
		description: 'Stupid Simple Home Manager CLI Wrapper'
		version:     '0.1.0'
		execute:     fn (cmd cli.Command) ! {
			return
		}
	}

	app.flags << cli.Flag{
		flag:        .bool
		name:        'help'
		abbrev:      'h'
		description: 'Show help information'
	}

	for subcmd in subcommands {
		app.commands << subcmd
	}

	app.setup()
	app.parse(os.args)

	if result.data.len > 0 {
		res := os.execute(result.data)
		println(res.output)
		return
	}
}
