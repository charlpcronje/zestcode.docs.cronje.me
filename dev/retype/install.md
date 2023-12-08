# Getting Started
Getting started with Retype is super quick and you can be up and running within seconds.

Check out the Quick start for the condensed process or continue here with the detailed instructions.

Please see the [Retype CLI](./cli.md) for full details on each command.

# Prerequisites
Retype is installed using either npm, yarn, or the dotnet CLI.

You only need one of those three package managers as a prerequisite, although all three could be installed on your computer too. It's up to you. 🙌

# Install
It takes just a few seconds to install Retype using any of the following commands. Choose the command based on a package manager you have installed on your computer.

```sh
npm install retypeapp --global
retype start
```

That's it! 🎉 Your new Retype website should be up and running. 🎉

If you already have the dotnet CLI installed on your machine, installing using dotnet tool install retypeapp --global will be the fastest option, but any of the options should install within seconds. They all produce the same result and run with the same performance. The dotnet package size is the smallest.

# Update
Update to the latest release of Retype using one of the following commands for the package manager that you initially installed Retype with. For instance, if you used npm to install Retype, run the npm update command to update Retype locally.

```sh
npm update retypeapp --global
```

# Uninstall

Done with Retype? It's okay, we understand. 😢

Uninstalling Retype is just as simple as installing. Use the same package manager to uninstall as you did to install. For instance, if you used npm to install Retype, run the npm uninstall command to remove.

```sh
npm uninstall retypeapp --global
```

All Retype related files and folders within your project can be deleted, such as the retype.yml file and the generated .retype folder.

# Platform specific
The default `retypapp` `NPM` package is a bundle of several platform specific packages. The installer will automatically detect and choose the correct platform package from the bundle during installation.

The bundle provides convenience although at the cost of an increased download size.

The dotnet package installer will automatically download the platform specific package.

For NPM and Yarn, it is possible to install smaller platform specific packages without the bundling. Currently, four separate platforms are supported and can be installed independently from the primary retypeapp package.

# macOS

```sh
npm install retypeapp-darwin-x64 --global

# OS	Version	Architectures
# macOS	10.15+	x64, Arm64
```

# Windows

```sh
npm install retypeapp-win-x64 --global
# or
npm install retypeapp-win-x86 --global

# OS	Version	Architectures
# Windows 10 Client	Version 1607+	x64, x86, Arm64
# Windows 11	Version 22000+	x64, x86, Arm64
# Windows Server	2012+	x64, x86
# Windows Server Core	2012+	x64, x86
# Nano Server	Version 1809+	x64
```

# Linux

```sh
npm install retypeapp-linux-x64 --global
```