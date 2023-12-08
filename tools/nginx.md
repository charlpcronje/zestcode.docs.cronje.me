# NginX Proxy Manager

To install Nginx Proxy Manager using Docker Compose and SQLite, you can modify the `docker-compose.yml` file as follows:

```yaml
version: '3.8'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '443:443'
      - '81:81' 

    environment:
      PUID: 0
      PGID: 0
      DB_SQLITE_FILE: "/data/database.sqlite"

    volumes:
      - /var/www/tools/nginx/data:/data
      - /var/www/tools/nginx/letsencrypt:/etc/letsencrypt
```

Here's a breakdown of the modified `docker-compose.yml` file:

- The `app` service is responsible for running the Nginx Proxy Manager container.
  - It exposes ports 80, 81, and 443 for HTTP and HTTPS traffic.
  - It mounts the `./data` directory for storing Nginx Proxy Manager data.
  - It mounts the `./letsencrypt` directory for storing SSL certificates.
  - It mounts the `./nginx-proxy-manager.conf` file for configuring Nginx Proxy Manager.
  - It sets the `DB_SQLITE_FILE` environment variable to specify the location of the SQLite database file.
  - It is connected to the `npm-internal` and `npm-nw` networks.

- The `npm-internal` network is an internal network for connecting the proxy manager and other services.
- The `npm-nw` network is an external network that allows the proxy manager to connect to other Docker containers.

You can save this modified `docker-compose.yml` file in your project directory and then run the following command to start the containers:

```bash
docker-compose up -d
```

This will start the Nginx Proxy Manager container with SQLite as the database backend. You can access the Nginx Proxy Manager web interface at `http://localhost:81` and log in with the default credentials (email: `admin@example.com`, password: `changeme`).

Make sure you have Docker and Docker Compose installed on your system before running the above commands.

## Troubleshooting

I had some troubleshooting when installing this on `167.71.143.202`

```sh
Last login: Fri Sep 22 18:13:34 2023 from 197.184.180.143
root@locums:~# cd /var/www/tools
root@locums:/var/www/tools# ls
homepage
root@locums:/var/www/tools# mkdir nginx
root@locums:/var/www/tools# cd nginx/
root@locums:/var/www/tools/nginx# ls
root@locums:/var/www/tools/nginx# touch docker-compose.yml
root@locums:/var/www/tools/nginx# nano docker-compose.yml
root@locums:/var/www/tools/nginx# mkdir data
root@locums:/var/www/tools/nginx# nano docker-compose.yml
root@locums:/var/www/tools/nginx# mkdir letsencrypt
root@locums:/var/www/tools/nginx# ls
# data  docker-compose.yml  letsencrypt
root@locums:/var/www/tools/nginx# id
# uid=0(root) gid=0(root) groups=0(root),33(www-data)
root@locums:/var/www/tools/nginx# docker compose up
# docker: 'compose' is not a docker command.
# See 'docker --help'
# root@locums:/var/www/tools/nginx# ai docker compose up

# ┌  AI Shell
# │
# ◇  Your script:


# docker-compose up


# •
#  │
# ◇  Explanation:


# 2. Docker Compose reads the configuration file (usually named "docker-compose.yml").
# 3. Docker Compose starts building and launching the containers specified in the configuration file.
# 4. The container environment is initialized based on the configuration.
# 5. The services defined in the file start running as separate containers.
# 6. Logs from each container are displayed in the console.
# 7. The containers continue running until manually stopped or the command is interrupted.
# 8. The output displays the running containers and their assigned ports.
# 9. The application orroot@locums:/var/www/tools/nginx#

root@locums:/var/www/tools/nginx# docker-compose up
#  Traceback (most recent call last):
#    File "/usr/bin/docker-compose", line 11, in <module>
#      load_entry_point('docker-compose==1.25.0', 'console_scripts', 'docker-compose')()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in load_entry_point
#      return get_distribution(dist).load_entry_point(group, name)
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in load_entry_point
#      return ep.load()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#      return self.resolve()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#      module = __import__(self.module_name, fromlist=['__name__'], level=0)
#    File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 18, in <module>
#      import docker
#    File "/usr/lib/python3/dist-packages/docker/__init__.py", line 2, in <module>
#      from .api import APIClient
#    File "/usr/lib/python3/dist-packages/docker/api/__init__.py", line 2, in <module>
#      from .client import APIClient
#    File "/usr/lib/python3/dist-packages/docker/api/client.py", line 5, in <module>
#      import requests
#  ModuleNotFoundError: No module named 'requests'
#  Error in sys.excepthook:
#  Traceback (most recent call last):
#    File "/usr/lib/python3/dist-packages/apport_python_hook.py", line 72, in apport_excepthook
#      from apport.fileutils import likely_packaged, get_recent_crashes
#    File "/usr/lib/python3/dist-packages/apport/__init__.py", line 5, in <module>
#      from apport.report import Report
#    File "/usr/lib/python3/dist-packages/apport/report.py", line 32, in <module>
#      import apport.fileutils
#    File "/usr/lib/python3/dist-packages/apport/fileutils.py", line 12, in <module>
#      import os, glob, subprocess, os.path, time, pwd, sys, requests_unixsocket
#    File "/usr/lib/python3/dist-packages/requests_unixsocket/__init__.py", line 1, in <module>
#      import requests
#  ModuleNotFoundError: No module named 'requests'
#  
#  Original exception was:
#  Traceback (most recent call last):
#    File "/usr/bin/docker-compose", line 11, in <module>
#      load_entry_point('docker-compose==1.25.0', 'console_scripts', 'docker-compose')()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in load_entry_point
#      return get_distribution(dist).load_entry_point(group, name)
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in load_entry_point
#      return ep.load()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#      return self.resolve()
#    File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#      module = __import__(self.module_name, fromlist=['__name__'], level=0)
#    File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 18, in <module>
#      import docker
#    File "/usr/lib/python3/dist-packages/docker/__init__.py", line 2, in <module>
#      from .api import APIClient
#    File "/usr/lib/python3/dist-packages/docker/api/__init__.py", line 2, in <module>
#      from .client import APIClient
#    File "/usr/lib/python3/dist-packages/docker/api/client.py", line 5, in <module>
#      import requests
#  ModuleNotFoundError: No module named 'requests'
#  root@locums:/var/www/tools/nginx# docker-compose up^C
#  root@locums:/var/www/tools/nginx# ^C
#  root@locums:/var/www/tools/nginx# pip3 install requests
#  Requirement already satisfied: requests in /usr/local/lib/python3.10/dist-packages (2.31.0)
#  Requirement already satisfied: charset-normalizer<4,>=2 in /usr/local/lib/python3.10/dist-packages  (from requests) (3.2.0)
#  Requirement already satisfied: idna<4,>=2.5 in /usr/lib/python3/dist-packages (from requests) (2.8)
#  Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/lib/python3/dist-packages (from requests)  (1.25.8)
#  Requirement already satisfied: certifi>=2017.4.17 in /usr/lib/python3/dist-packages (from requests)  (2019.11.28)
#  DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this  behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact  the author to suggest that they release a version with a conforming version number. Discussion can  be found at https://github.com/pypa/pip/issues/12063
#  DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce  this behaviour change. A possible replacement is to upgrade to a newer version of python-debian or  contact the author to suggest that they release a version with a conforming version number.  Discussion can be found at https://github.com/pypa/pip/issues/12063
#  WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour  with the system package manager. It is recommended to use a virtual environment instead: https:// pip.pypa.io/warnings/venv
 
 root@locums:/var/www/tools/nginx# head -1 $(which docker-compose)
# !/usr/bin/python3
 
 root@locums:/var/www/tools/nginx# sudo /usr/bin/python3 -m pip install requests
# /usr/bin/python3: No module named pip
root@locums:/var/www/tools/nginx# apt install python3-pip
# Reading package lists... Done
# uilding dependency tree
# Reading state information... Done
# python3-pip is already the newest version (20.0.2-5ubuntu1.9).
# 0 upgraded, 0 newly installed, 0 to remove and 74 not upgraded.
 
root@locums:/var/www/tools/nginx# which pip3
# /usr/local/bin/pip3
 root@locums:/var/www/tools/nginx# ln -s /usr/local/bin/pip3 /usr/bin/pip3
# ln: failed to create symbolic link '/usr/bin/pip3': File exists

 root@locums:/var/www/tools/nginx# sudo rm /usr/bin/pip3
 root@locums:/var/www/tools/nginx# sudo ln -s /usr/local/bin/pip3 /usr/bin/pip3
 root@locums:/var/www/tools/nginx# sudo /usr/bin/python3 -m pip install requests
# /usr/bin/python3: No module named pip
 root@locums:/var/www/tools/nginx# sudo /usr/local/bin/pip3 install requests
# Requirement already satisfied: requests in /usr/local/lib/python3.10/dist-packages (2.31.0)
# Requirement already satisfied: charset-normalizer<4,>=2 in /usr/local/lib/python3.10/dist-packages  (from requests) (3.2.0)
# Requirement already satisfied: idna<4,>=2.5 in /usr/lib/python3/dist-packages (from requests) (2.8)
# Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/lib/python3/dist-packages (from requests)  (1.25.8)
# Requirement already satisfied: certifi>=2017.4.17 in /usr/lib/python3/dist-packages (from requests)  (2019.11.28)
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this  behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact  the author to suggest that they release a version with a conforming version number. Discussion can  be found at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce  this behaviour change. A possible replacement is to upgrade to a newer version of python-debian or  contact the author to suggest that they release a version with a conforming version number.  Discussion can be found at https://github.com/pypa/pip/issues/12063
# WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour  with the system package manager. It is recommended to use a virtual environment instead: https:// pip.pypa.io/warnings/venv

root@locums:/var/www/tools/nginx# head -1 $(which docker-compose)
#!/usr/bin/python3

root@locums:/var/www/tools/nginx# sudo /usr/local/bin/pip3 install --force-reinstall docker-compose
#Collecting docker-compose
#  Downloading docker_compose-1.29.2-py2.py3-none-any.whl (114 kB)
#     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 114.8/114.8 kB 11.9 MB/s eta 0:00:00
#Collecting PyYAML<6,>=3.10 (from docker-compose)
#  Downloading PyYAML-5.4.1.tar.gz (175 kB)
#     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 175.1/175.1 kB 24.7 MB/s eta 0:00:00
#  Installing build dependencies ... done
# Getting requirements to build wheel ... error
#  error: subprocess-exited-with-error

#  × Getting requirements to build wheel did not run successfully.
#  │ exit code: 1
#  ╰─> [62 lines of output]
#      /tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/config/setupcfg.py:293: _DeprecatedConfig: Deprecated config in `setup.cfg`
#      !!

#              ********************************************************************************
#              The license_file parameter is deprecated, use license_files instead.

#              By 2023-Oct-30, you need to update your project and remove deprecated calls
#              or your builds will no longer be supported.

#              See https://setuptools.pypa.io/en/latest/userguide/declarative_config.html for details.
#              ********************************************************************************

#     !!
#        parsed = self.parsers.get(option_name, lambda x: x)(value)
#      running egg_info
#      writing lib3/PyYAML.egg-info/PKG-INFO
#      writing dependency_links to lib3/PyYAML.egg-info/dependency_links.txt
#      writing top-level names to lib3/PyYAML.egg-info/top_level.txt
#     Traceback (most recent call last):
#        File "/usr/local/lib/python3.10/dist-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 353, in <module>
#          main()
#        File "/usr/local/lib/python3.10/dist-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 335, in main
#          json_out['return_val'] = hook(**hook_input['kwargs'])
#        File "/usr/local/lib/python3.10/dist-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 118, in get_requires_for_build_wheel
#          return hook(config_settings)
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/build_meta.py", line 355, in get_requires_for_build_wheel
#          return self._get_build_requires(config_settings, requirements=['wheel'])
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/build_meta.py", line 325, in _get_build_requires
 #         self.run_setup()
 #       File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/build_meta.py", line 341, in run_setup
#        exec(code, locals())
#        File "<string>", line 271, in <module>
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/__init__.py", line 103, in setup
#          return distutils.core.setup(**attrs)
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/core.py", line 185, in setup
#          return run_commands(dist)
#       File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/core.py", line 201, in run_commands
#          dist.run_commands()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/dist.py", line 969, in run_commands
#          self.run_command(cmd)
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/dist.py", line 989, in run_command
#          super().run_command(command)
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/dist.py", line 988, in run_command
#          cmd_obj.run()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/command/egg_info.py", line 318, in run
#          self.find_sources()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/command/egg_info.py", line 326, in find_sources
#          mm.run()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/command/egg_info.py", line 548, in run
#          self.add_defaults()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/command/egg_info.py", line 586, in add_defaults
#          sdist.add_defaults(self)
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/command/sdist.py", line 113, in add_defaults
#          super().add_defaults()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/command/sdist.py", line 251, in add_defaults
#          self._add_defaults_ext()
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/command/sdist.py", line 336, in _add_defaults_ext
#          self.filelist.extend(build_ext.get_source_files())
#        File "<string>", line 201, in get_source_files
#        File "/tmp/pip-build-env-0d2dbpzq/overlay/local/lib/python3.10/dist-packages/setuptools/_distutils/cmd.py", line 107, in __getattr__
#          raise AttributeError(attr)
#      AttributeError: cython_sources
#      [end of output]
#
#  note: This error originates from a subprocess, and is likely not a problem with pip.
# error: subprocess-exited-with-error

# × Getting requirements to build wheel did not run successfully.
# │ exit code: 1
# ╰─> See above for output.

# note: This error originates from a subprocess, and is likely not a problem with pip.

root@locums:/var/www/tools/nginx# apt-get install docker-compose
#Reading package lists... Done
#Building dependency tree
#Reading state information... Done
#docker-compose is already the newest version (1.25.0-1).
#0 upgraded, 0 newly installed, 0 to remove and 74 not upgraded.

root@locums:/var/www/tools/nginx# sudo apt-get remove docker-compose
#Reading package lists... Done
#Building dependency tree
#Reading state information... Done
#The following packages were automatically installed and are no longer required:
#  python3-cached-property python3-docker python3-dockerpty python3-docopt python3-texttable python3-websocket
#Use 'sudo apt autoremove' to remove them.
#The following packages will be REMOVED:
#  docker-compose
#0 upgraded, 0 newly installed, 1 to remove and 74 not upgraded.
#After this operation, 667 kB disk space will be freed.

Do you want to continue? [Y/n] y
#(Reading database ... 122618 files and directories currently installed.)
#Removing docker-compose (1.25.0-1) ...
#Processing triggers for man-db (2.9.1-1) ...
#root@locums:/var/www/tools/nginx# sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                 Dload  Upload   Total   Spent    Left  Speed
#  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
#  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
#100 56.8M  100 56.8M    0     0  79.8M      0 --:--:-- --:--:-- --:--:--  291M
#root@locums:/var/www/tools/nginx# chmod +x /usr/local/bin/docker-compose
#root@locums:/var/www/tools/nginx# docker-compose --version
#-bash: /usr/bin/docker-compose: No such file or directory
#root@locums:/var/www/tools/nginx# exec $SHELL
#root@locums:/var/www/tools/nginx# echo $PATH
#/root/.local/bin:/root/.poetry/bin:/root/.local/bin:/root/.poetry/bin:/usr/local/sbin:/usr/local/#bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#root@locums:/var/www/tools/nginx# ^C
#root@locums:/var/www/tools/nginx# export PATH=$PATH:/usr/local/bin
#root@locums:/var/www/tools/nginx# docker-compose --version
#Docker Compose version v2.22.0
#root@locums:/var/www/tools/nginx# ^C
#root@locums:/var/www/tools/nginx# echo "export PATH=\$PATH:/usr/local/bin" >> ~/.bashrc
#root@locums:/var/www/tools/nginx# docker-compose up
#parsing /var/www/tools/nginx/docker-compose.yml: yaml: line 10: did not find expected '-' indicator
#root@locums:/var/www/tools/nginx# nano docker-compose.yml


#Use "fg" to return to nano.

#[1]+  Stopped                 nano docker-compose.yml

root@locums:/var/www/tools/nginx# docker-compose up
#parsing /var/www/tools/nginx/docker-compose.yml: yaml: line 10: did not find expected '-' indicator
#root@locums:/var/www/tools/nginx# docker-compose up
#[+] Building 0.0s (0/#0)                                                                                                  #         docker:default
#[+] Running 2/1
# ✔ Network nginx_default  Created                                                                                                           0.1s
# ✔ Container nginx-app-1  Created                                                                                                           0.1s
#Attaching to nginx-app-1
#nginx-app-1  | ❯ Configuring npm user ...
#nginx-app-1  | ❯ Configuring npm group ...
#nginx-app-1  | ❯ Checking paths ...
#nginx-app-1  | ❯ Setting ownership ...
#nginx-app-1  | ❯ Dynamic resolvers ...
#nginx-app-1  | ❯ IPv6 ...
#nginx-app-1  | Enabling IPV6 in hosts in: /etc/nginx/conf.d
#nginx-app-1  | - /etc/nginx/conf.d/include/block-exploits.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/ip_ranges.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/force-ssl.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/letsencrypt-acme-challenge.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/ssl-ciphers.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/proxy.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/assets.conf
#nginx-app-1  | - /etc/nginx/conf.d/include/resolvers.conf
#nginx-app-1  | - /etc/nginx/conf.d/default.conf
#nginx-app-1  | - /etc/nginx/conf.d/production.conf
#nginx-app-1  | Enabling IPV6 in hosts in: /data/nginx
#nginx-app-1  | ❯ Docker secrets ...
#nginx-app-1  |
#nginx-app-1  | -------------------------------------
#nginx-app-1  |  _   _ ____  __  __
#nginx-app-1  | | \ | |  _ \|  \/  |
#nginx-app-1  | |  \| | |_) | |\/| |
#nginx-app-1  | | |\  |  __/| |  | |
#nginx-app-1  | |_| \_|_|   |_|  |_|
#nginx-app-1  | -------------------------------------
#nginx-app-1  | User:  npm PUID:0 ID:0 GROUP:0
#nginx-app-1  | Group: npm PGID:0 ID:0
#nginx-app-1  | -------------------------------------
#nginx-app-1  |
#nginx-app-1  | ❯ Starting nginx ...
#nginx-app-1  | ❯ Starting backend ...
#nginx-app-1  | [9/22/2023] [7:55:27 PM] [Global   ] › ℹ  info      Using Sqlite: /data/database.#sqlite
#nginx-app-1  | [9/22/2023] [7:55:27 PM] [Global   ] › ℹ  info      Creating a new JWT key pair...
#nginx-app-1  | [9/22/2023] [7:55:31 PM] [Global   ] › ℹ  info      Wrote JWT key pair to config #file: /data/keys.json
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      Current database version: none
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] auth Table #created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] user Table #created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] user_permission Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] proxy_host #Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] #redirection_host Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] dead_host Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] stream Table #created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] access_list #Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] certificate #Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] #access_list_auth Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [initial-schema] audit_log Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [websockets] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [websockets] proxy_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [forward_host] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [forward_host] proxy_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [http2_support] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [http2_support] proxy_host Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [http2_support] redirection_host #Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [http2_support] dead_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [forward_scheme] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [forward_scheme] proxy_host #Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [disabled] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [disabled] proxy_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [disabled] redirection_host #Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [disabled] dead_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [disabled] stream Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [custom_locations] Migrating #Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [custom_locations] proxy_host #Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [hsts] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [hsts] proxy_host Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [hsts] redirection_host Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [hsts] dead_host Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [settings] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [settings] setting Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [access_list_client] Migrating #Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [access_list_client] #access_list_client Table created
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [access_list_client] access_list #Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [access_list_client_fix] #Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [access_list_client_fix] #access_list Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [pass_auth] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [pass_auth] access_list Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [redirection_scheme] Migrating #Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [redirection_scheme] #redirection_host Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [redirection_status_code] #Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [redirection_status_code] #redirection_host Table altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [stream_domain] Migrating Up...
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [stream_domain] stream Table #altered
#nginx-app-1  | [9/22/2023] [7:55:33 PM] [Migrate  ] › ℹ  info      [stream_domain] Migrating Up...

nginx-app-1  | [9/22/2023] [7:55:33 PM] [Setup    ] › ℹ  info      Creating a new user: admin@example.com with password: changeme

#nginx-app-1  | [9/22/2023] [7:55:34 PM] [Setup    ] › ℹ  info      Initial admin setup completed
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [Setup    ] › ℹ  info      Default settings added
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [Setup    ] › ℹ  info      Logrotate Timer initialized
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [Setup    ] › ℹ  info      Logrotate completed.
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [IP Ranges] › ℹ  info      Fetching IP Ranges from online #services...
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [IP Ranges] › ℹ  info      Fetching https://ip-ranges.#amazonaws.com/ip-ranges.json
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [IP Ranges] › ℹ  info      Fetching https://www.cloudflare.#com/ips-v4
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [IP Ranges] › ℹ  info      Fetching https://www.cloudflare.#com/ips-v6
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [SSL      ] › ℹ  info      Let's Encrypt Renewal Timer #initialized
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [SSL      ] › ℹ  info      Renewing SSL certs close to #expiry...
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [IP Ranges] › ℹ  info      IP Ranges Renewal Timer #initialized
#nginx-app-1  | [9/22/2023] [7:55:34 PM] [Global   ] › ℹ  info      Backend PID 160 listening on #port 3000 ...
#nginx-app-1  | [9/22/2023] [7:55:35 PM] [Nginx    ] › ℹ  info      Reloading Nginx
#nginx-app-1  | [9/22/2023] [7:55:35 PM] [SSL      ] › ℹ  info      Renew Complete
```

Now that I know I have docker-compose.yml file that works, I'm going to deploy that it in [Portainer](./portainer.md). Because if I deploy it in the terminal then Portainer does not have all te permissions to manage the container properly.