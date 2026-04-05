import core { HomeCommand, HomeCommandResult }

pub fn test_command_framework() {
	mut res := HomeCommandResult{}
	hello := HomeCommand{
		name:        'Hello'
		description: 'Hello World'
		exec:        fn (args []string) string {
			return 'Hello World'
		}
	}
	cli := hello.build(mut res)
	cli.execute(cli)!

	assert res.data == 'Hello World'
}
