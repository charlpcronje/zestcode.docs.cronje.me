# GitHub CLI Install

To install GitHub CLI (gh cli), the process varies depending on your operating system. Here are installation instructions for various platforms:

**Windows**: 

GitHub CLI is available to download for Windows under the "Releases" tab of the official GitHub repository. Once downloaded, open the installer and follow the instructions.

**macOS (Homebrew)**: 

If you have Homebrew installed, you can use it to install GitHub CLI by running the following command:

```bash
brew install gh
```

**Linux**:

- For Debian, Ubuntu, or apt-based distros, you can use the following commands:

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
```

- For Fedora, CentOS, or dnf-based distros:

```bash
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh
```

- For openSUSE Tumbleweed:

```bash
sudo zypper in gh
```

- For Void Linux:

```bash
sudo xbps-install github-cli
```

- For Android (using Termux):

```bash
pkg install gh
```

After installation, you can authenticate GitHub CLI with your GitHub account by running:

```bash
gh auth login
```

You will be prompted to provide your GitHub credentials and choose the protocol (HTTPS or SSH) for git operations.

After successful login, you can start using GitHub CLI. To view all top-level GitHub CLI commands, enter `gh` without arguments:

```bash
gh
```

To list all of the subcommands that you can use with a GitHub CLI command, use the top-level command without arguments:

```bash
gh COMMAND
```

For example, to view the environment variables that you can set to affect certain aspects of GitHub CLI, use the environment command:

```bash
gh environment
```

To view the configuration settings that you can set, use the config command:

```bash
gh config
```

To view help for a particular subcommand, use the `--help` flag:

```bash
gh COMMAND [SUBCOMMAND ...] --help
```
