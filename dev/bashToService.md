# Bash to Service

1. Create a new unit file using a text editor:

```sh
    sudo nano /etc/systemd/system/code_server_kill_switch.service
```

2. Add the following content to the unit file:

```sh
[Unit]
   Description=CPU Monitor Service
   After=network.target

[Service]
   ExecStart=/path/to/your/script.sh
   Restart=always

[Install]
   WantedBy=multi-user.target
```

Replace  `/path/to/your/script.sh`  with the actual path to your bash script. 

3. Save and close the file. 
4. Reload the systemd daemon to make it aware of the new unit file:

```sh
sudo systemctl daemon-reload
```

5. Enable the service to start on boot:

```sh
sudo systemctl enable code_server_kill_switch.service
```

6. Start the service:

```sh
sudo systemctl start code_server_kill_switch.service
```

Now, your script will run as a service and automatically start on boot. You can check the status of the service using  `systemctl status code_server_kill_switch.service` . If you need to stop or restart the service, you can use  `systemctl stop code_server_kill_switch.service`  or  `systemctl restart code_server_kill_switch.service` , respectively.

## Troubleshooting the service

After making changes to the unit file, you can follow these steps to ensure the updated file is used: 
 
1. Reload the systemd daemon to make it aware of the changes in the unit file:

```sh
sudo systemctl daemon-reload
```

2. Restart the service to apply the changes:

```sh
sudo systemctl restart code_server_kill_switch.service
```

This will stop the currently running service (if any) and start it again using the updated unit file. 
 
You can verify if the updated file is being used by checking the status of the service:

```sh
sudo systemctl status code_server_kill_switch.service
``

In the output, look for the path mentioned in the  Loaded  line. It should reflect the absolute path to the unit file you updated. Additionally, you can also check the logs of the service to see if any errors or warnings are reported:

```sh
sudo journalctl -u code_server_kill_switch.service
```

Make sure to review the logs to ensure that the service is running as expected after applying the changes.