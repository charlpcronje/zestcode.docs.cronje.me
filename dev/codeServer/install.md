# Install Code Server

- Run the following command

```sh
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
curl -fsSL https://code-server.dev/install.sh | sh
```

The above command will install code-server but it will not be running. You can then run `code-server` with the following command:

```sh
code-server
```

You can let code-server run as a service with the following command:

```sh
sudo systemctl enable --now code-server@$USER

# TO start server
sudo systemctl start code-server@$USER

# To stop  server
sudo systemctl stop code-server@$USER