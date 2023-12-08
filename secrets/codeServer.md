# Code-Server config.yml

```yml
bind-addr: 127.0.0.1:5555
auth: password
password: fcmsdok523ri
cert: false
```

## The config file is located at

```sh
cd ~/.config/code-server/config.yaml

sudo systemctl restart code-server@$USER
```

Additionally, you can specify the user data directory for `code-server` by using the `--user-data-dir flag`. For instance, to reuse your existing VS Code configuration, you can pass `--user-data-dir ~/.vscode` or copy `~/.vscode into ~/.local/share/code-server` 

If you want to change the port on which `code-server` runs, you can use the `--bind-addr` flag. For example, to run `code-server` on localhost at` port 3000`, you would use the command` code-server --bind-addr localhost:3000`