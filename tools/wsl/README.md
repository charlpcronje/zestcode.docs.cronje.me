# WSL - Windows subsystem for Linux

## 1. Install WSL 1

Firstly, you need to enable the Windows Subsystem for Linux (`WSL`) feature on your `Windows 10 system`. 

For this, you will need to open `PowerShell` or `Windows Command Prompt` in administrator mode. To do this, right-click on the application and select `Run as administrator`. Then enter the following command and hit enter:

```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

## 2. Enable Virtual Machine feature

Before installing `WSL 2`, you must enable the Virtual Machine Platform optional feature. Open `PowerShell as Administrator` and run this command:

```sh
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

## 3. Install WSL 2

After that, you have to update to WSL 2 using this command:

```sh
wsl --set-default-version 2
```

[BACK to Tools](../README.md)