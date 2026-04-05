module core

import cli

fn list_exec(args []string) string {
	return 'home-manager generations'
}

pub fn list_cmd(mut result HomeCommandResult) cli.Command {
	cmd := HomeCommand{
		name:        'list'
		description: 'List home-manager generation'
		exec:        list_exec
	}
	return cmd.build(mut result)
}
