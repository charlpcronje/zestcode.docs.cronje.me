# Github CLI

- [Install GH CLI](./ghCliInstall.md)

To set the configuration for the GitHub CLI (gh), you can use the `gh config set` command followed by the key and value you want to set. Here's an example:

```sh
gh config set git_protocol ssh
```

This command sets the `git_protocol` configuration to use SSH for git clone and push operations.

You can also use the `gh config get` command to check the current value of a configuration key:

```sh
gh config get git_protocol
```

This command will return the current value of the `git_protocol` configuration.

To list all the available configuration settings and their current values, you can use the `gh config list` command:

```sh
gh config list
```

This command will display a list of all the configuration settings and their values.

Here are some other configuration settings you can modify:

- `prompt`: toggle interactive prompting in the terminal (default: "enabled")
- `pager`: the terminal pager program to send standard output to
- `http_unix_socket`: the path to a Unix socket through which to make an HTTP connection

You can set these configurations using the same `gh config set` command, replacing the key and value accordingly.

Remember that the `gh config set` command modifies the configuration for the current user. If you want to set per-host configurations or get per-host settings, you can use the `-h, --host` flag with the respective commands.