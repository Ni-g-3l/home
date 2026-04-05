module core

import cli

fn reload_exec(args []string) string {
	return 'home-manager switch'
}

pub fn reload_cmd(mut result HomeCommandResult) cli.Command {
	cmd := HomeCommand{
		name:        'reload'
		description: 'Reload your home-manager configuration'
		exec:        reload_exec
	}
	return cmd.build(mut result)
}
