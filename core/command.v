module core

import cli

pub struct HomeCommand {
pub:
	name        string
	description string
	exec        fn (args []string) string @[required]
}

pub struct HomeCommandResult {
pub mut:
	data string
}

pub fn (this HomeCommand) build(mut result HomeCommandResult) cli.Command {
	mut cmd := cli.Command{
		name:        this.name
		description: this.description
		execute:     fn [this, mut result] (cmd cli.Command) ! {
			result.data = this.exec(cmd.args)
		}
	}
	cmd.flags << cli.Flag{
		flag:        .bool
		name:        'help'
		abbrev:      'h'
		description: 'Show help information'
	}
	cmd.setup()
	return cmd
}
