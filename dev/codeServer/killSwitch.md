# Code Server Kill Switch

Because code server can sometimes use significant resources, and in some cases so bad that it would even prevent an SSH connection to be established. So I create the following `bash` script

- [code_server_cpu_monitor.sh](./code_server_kill_switch.sh)

The script will run in the background by making it a service:

- [Make bash script a service](../bashToService.md)

It will monitor the `CPU usage` and if the server is using 1`00% CPU` for 3 consecutive minutes then the `code-server service` will be stopped