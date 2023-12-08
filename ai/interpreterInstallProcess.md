# Open Interpreter Install Process

```sh
sudo apt install python3 python3-pip

# Reading package lists... Done
# Building dependency tree
# Reading state information... Done
# python3 is already the newest version (3.8.2-0ubuntu2).
# python3 set to manually installed.
# python3-pip is already the newest version (20.0.2-5ubuntu1.9).
# 0 upgraded, 0 newly installed, 0 to remove and 78 not upgraded.
root@locums:/opt# echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.bashrc
root@locums:/opt# source ~/.bashrc
root@locums:/opt# poetry --version

# poetry: command not found

root@locums:/opt# # Bash-1-FN-1: Check if Poetry is installed in the expected directory
root@locums:/opt# ls $HOME/.poetry/bin
# ls: cannot access '/root/.poetry/bin': No such file or directory

root@locums:/opt# ls $HOME/.poetry/bin
# ls: cannot access '/root/.poetry/bin': No such file or directory

root@locums:/opt# echo $PATH
# /root/.poetry/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

root@locums:/opt# ls /root/.poetry/bin
# ls: cannot access '/root/.poetry/bin': No such file or directory

root@locums:/opt# # Reinstall Poetry as root
root@locums:/opt# curl -sSL https://install.python-poetry.org | python3 -
# Retrieving Poetry metadata
# Welcome to Poetry!
# This will download and install the latest version of Poetry,
# a dependency and package manager for Python.
# It will add the `poetry` command to Poetry's bin directory, located at:
# /root/.local/bin
# You can uninstall at any time by executing this script with the --uninstall option,
# and these changes will be reverted.
# Installing Poetry (1.6.1): Done

# Poetry (1.6.1) is installed now. Great!
# To get started you need Poetry's bin directory (/root/.local/bin) in your `PATH`
# environment variable.
# Add `export PATH="/root/.local/bin:$PATH"` to your shell configuration file.
# Alternatively, you can call Poetry explicitly with `/root/.local/bin/poetry`.
# You can test that everything is set up by executing:
# `poetry --version`

root@locums:/opt# poetry --version
# poetry: command not found

# root@locums:/opt# echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.bashc
root@locums:/opt# source ~/.bashrc
root@locums:/opt# poetry --version
# poetry: command not found

root@locums:/opt# echo 'export PATH="/root/.local/bin:$PATH"' >> ~/.bashrc
root@locums:/opt# source ~/.bashrc

root@locums:/opt# poetry --version
# Poetry (version 1.6.1)

root@locums:/opt# ls
# containerd  digitalocean  open-interpreter  sprutio
root@locums:/opt# cd open-interpreter/
root@locums:/opt/open-interpreter# ls
# CONTRIBUTING.md  README.md     README_JA.md  SECURITY.md  interpreter  pyproject.toml
# LICENSE          README_IN.md  README_ZH.md  docs         poetry.lock  tests
root@locums:/opt/open-interpreter# poetry install interpreter
# The currently activated Python version 3.8.10 is not supported by the project (^3.10).
# Trying to find and use a compatible version.
# Using python3.10 (3.10.13)
# Creating virtualenv open-interpreter-oxSPRzzq-py3.10 in /root/.cache/pypoetry/virtualenvs

# No arguments expected for "install" command, got "interpreter/"

root@locums:/opt/open-interpreter# sudo apt update
# Hit:1 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal InRelease
# Hit:2 http://ppa.launchpad.net/ondrej/php/ubuntu focal InRelease
# Hit:3 http://mirrors.digitalocean.com/ubuntu focal InRelease
# Hit:4 https://dl.yarnpkg.com/debian stable InRelease
# Hit:5 https://repos-droplet.digitalocean.com/apt/droplet-agent main InRelease
# Get:6 http://mirrors.digitalocean.com/ubuntu focal-updates InRelease [114 kB]
# Get:7 https://deb.nodesource.com/node_16.x focal InRelease [4583 B]
# Get:8 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
# Get:9 http://mirrors.digitalocean.com/ubuntu focal-backports InRelease [108 kB]
# Get:10 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 Packages [2851 kB]
# Get:11 http://mirrors.digitalocean.com/ubuntu focal-updates/universe amd64 Packages [1117 kB]
# Fetched 4309 kB in 2s (1740 kB/s)
# Reading package lists... Done
# Building dependency tree
# Reading state information... Done
# 78 packages can be upgraded. Run 'apt list --upgradable' to see them.
# root@locums:/opt/open-interpreter# sudo apt install python3.10 python3.10-venv python3.# 10-dev
# Reading package lists... Done
# Building dependency tree
# Reading state information... Done
# python3.10 is already the newest version (3.10.13-1+focal1).
# The following additional packages will be installed:
#   libpython3.10 libpython3.10-dev python3.10-distutils python3.10-lib2to3
# The following NEW packages will be installed:
#   libpython3.10 libpython3.10-dev python3.10-dev python3.10-distutils python3.10-lib2to3 # python3.10-venv
# 0 upgraded, 6 newly installed, 0 to remove and 78 not upgraded.
# Need to get 9767 kB of archives.
# After this operation, 32.2 MB of additional disk space will be used.
# Do you want to continue? [Y/n] y
# Get:1 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 libpython3.10 # amd64 3.10.13-1+focal1 [1760 kB]
# Get:2 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 libpython3.10-dev # amd64 3.10.13-1+focal1 [4263 kB]
# Get:3 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 python3.10-dev # amd64 3.10.13-1+focal1 [501 kB]
# Get:4 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 python3.10-lib2to3 # all 3.10.13-1+focal1 [125 kB]
# Get:5 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 python3.# 10-distutils all 3.10.13-1+focal1 [187 kB]
# Get:6 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal/main amd64 python3.10-venv # amd64 3.10.13-1+focal1 [2931 kB]
# Fetched 9767 kB in 0s (36.0 MB/s)
# Selecting previously unselected package libpython3.10:amd64.
# (Reading database ... 120234 files and directories currently installed.)
# Preparing to unpack .../0-libpython3.10_3.10.13-1+focal1_amd64.deb ...
# Unpacking libpython3.10:amd64 (3.10.13-1+focal1) ...
# Selecting previously unselected package libpython3.10-dev:amd64.
# Preparing to unpack .../1-libpython3.10-dev_3.10.13-1+focal1_amd64.deb ...
# Unpacking libpython3.10-dev:amd64 (3.10.13-1+focal1) ...
# Selecting previously unselected package python3.10-dev.
# Preparing to unpack .../2-python3.10-dev_3.10.13-1+focal1_amd64.deb ...
# Unpacking python3.10-dev (3.10.13-1+focal1) ...
# Selecting previously unselected package python3.10-lib2to3.
# Preparing to unpack .../3-python3.10-lib2to3_3.10.13-1+focal1_all.deb ...
# Unpacking python3.10-lib2to3 (3.10.13-1+focal1) ...
# Selecting previously unselected package python3.10-distutils.
# Preparing to unpack .../4-python3.10-distutils_3.10.13-1+focal1_all.deb ...
# Unpacking python3.10-distutils (3.10.13-1+focal1) ...
# Selecting previously unselected package python3.10-venv.
# Preparing to unpack .../5-python3.10-venv_3.10.13-1+focal1_amd64.deb ...
# Unpacking python3.10-venv (3.10.13-1+focal1) ...
# Setting up libpython3.10:amd64 (3.10.13-1+focal1) ...
# Setting up python3.10-lib2to3 (3.10.13-1+focal1) ...
# Setting up libpython3.10-dev:amd64 (3.10.13-1+focal1) ...
# Setting up python3.10-distutils (3.10.13-1+focal1) ...
# Setting up python3.10-dev (3.10.13-1+focal1) ...
# Setting up python3.10-venv (3.10.13-1+focal1) ...
# Processing triggers for man-db (2.9.1-1) ...
root@locums:/opt/open-interpreter# poetry env use python3.10
# Using virtualenv: /root/.cache/pypoetry/virtualenvs/open-interpreter-oxSPRzzq-py3.10
root@locums:/opt/open-interpreter# poetry run python --version
# Python 3.10.13

root@locums:/opt/open-interpreter# pip install open-interpreter
# Traceback (most recent call last):
#   File "/usr/bin/pip", line 11, in <module>
#     load_entry_point('pip==20.0.2', 'console_scripts', 'pip')()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in # load_entry_point
#     return get_distribution(dist).load_entry_point(group, name)
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in # load_entry_point
#     return ep.load()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#     return self.resolve()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#     module = __import__(self.module_name, fromlist=['__name__'], level=0)
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#     from pip._internal.cli.autocompletion import autocomplete
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in # <module>
#     from pip._internal.cli.main_parser import create_main_parser
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in # <module>
#     from pip._internal.cli import cmdoptions
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in # <module>
#     from pip._internal.exceptions import CommandError
#   File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#     from pip._vendor.six import iteritems
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#     vendored("cachecontrol")
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#     __import__(modulename, globals(), locals(), level=0)
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# __init__.py", line 9, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# wrapper.py", line 1, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# adapter.py", line 5, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.# py", line 95, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/# pyopenssl.py", line 46, in <module>
#   File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#     from OpenSSL import crypto, SSL
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#     class X509StoreFlags(object):
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#     CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
# Error in sys.excepthook:
# Traceback (most recent call last):
#   File "/usr/lib/python3/dist-packages/apport_python_hook.py", line 72, in # apport_excepthook
#     from apport.fileutils import likely_packaged, get_recent_crashes
#   File "/usr/lib/python3/dist-packages/apport/__init__.py", line 5, in <module>
#     from apport.report import Report
#   File "/usr/lib/python3/dist-packages/apport/report.py", line 32, in <module>
#     import apport.fileutils
#   File "/usr/lib/python3/dist-packages/apport/fileutils.py", line 12, in <module>
#     import os, glob, subprocess, os.path, time, pwd, sys, requests_unixsocket
#   File "/usr/lib/python3/dist-packages/requests_unixsocket/__init__.py", line 1, in # <module>
#     import requests
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.# py", line 95, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/# pyopenssl.py", line 46, in <module>
#   File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#     from OpenSSL import crypto, SSL
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#     class X509StoreFlags(object):
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#     CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
# 
# Original exception was:
# Traceback (most recent call last):
#   File "/usr/bin/pip", line 11, in <module>
#     load_entry_point('pip==20.0.2', 'console_scripts', 'pip')()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in # load_entry_point
#     return get_distribution(dist).load_entry_point(group, name)
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in # load_entry_point
#     return ep.load()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#     return self.resolve()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#     module = __import__(self.module_name, fromlist=['__name__'], level=0)
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#     from pip._internal.cli.autocompletion import autocomplete
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in # <module>
#     from pip._internal.cli.main_parser import create_main_parser
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in # <module>
#     from pip._internal.cli import cmdoptions
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in # <module>
#     from pip._internal.exceptions import CommandError
#   File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#     from pip._vendor.six import iteritems
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#     vendored("cachecontrol")
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#     __import__(modulename, globals(), locals(), level=0)
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# __init__.py", line 9, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# wrapper.py", line 1, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/# adapter.py", line 5, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__. py", line 95, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#   File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#     from OpenSSL import crypto, SSL
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#     class X509StoreFlags(object):
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#     CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'

root@locums:/opt/open-interpreter# sudo python3 -m pip install --upgrade pip
# Traceback (most recent call last):
#   File "/usr/lib/python3.8/runpy.py", line 194, in _run_module_as_main
#    return _run_code(code, main_globals, None,
#  File "/usr/lib/python3.8/runpy.py", line 87, in _run_code
#    exec(code, run_globals)
#  File "/usr/lib/python3/dist-packages/pip/__main__.py", line 16, in <module>
#    from pip._internal.cli.main import main as _main  # isort:skip # noqa
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#    from pip._internal.cli.autocompletion import autocomplete
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in <module>
#    from pip._internal.cli.main_parser import create_main_parser
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in <module>
#    from pip._internal.cli import cmdoptions
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in <module>
#    from pip._internal.exceptions import CommandError
#  File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#    from pip._vendor.six import iteritems
#  File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#    vendored("cachecontrol")
#  File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#    __import__(modulename, globals(), locals(), level=0)
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/__init__.py", line 9, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/wrapper.py", line 1, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/adapter.py", line 5, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#  File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#    from OpenSSL import crypto, SSL
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#    class X509StoreFlags(object):
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#    CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
# Error in sys.excepthook:
# Traceback (most recent call last):
#   File "/usr/lib/python3/dist-packages/apport_python_hook.py", line 72, in apport_excepthook
#     from apport.fileutils import likely_packaged, get_recent_crashes
#   File "/usr/lib/python3/dist-packages/apport/__init__.py", line 5, in <module>
#     from apport.report import Report
#   File "/usr/lib/python3/dist-packages/apport/report.py", line 32, in <module>
#     import apport.fileutils
#   File "/usr/lib/python3/dist-packages/apport/fileutils.py", line 12, in <module>
#     import os, glob, subprocess, os.path, time, pwd, sys, requests_unixsocket
#   File "/usr/lib/python3/dist-packages/requests_unixsocket/__init__.py", line 1, in <module>
#     import requests
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#   File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#     from OpenSSL import crypto, SSL
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#     class X509StoreFlags(object):
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#     CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'

# Original exception was:
# Traceback (most recent call last):
#   File "/usr/lib/python3.8/runpy.py", line 194, in _run_module_as_main
#     return _run_code(code, main_globals, None,
#   File "/usr/lib/python3.8/runpy.py", line 87, in _run_code
#     exec(code, run_globals)
#   File "/usr/lib/python3/dist-packages/pip/__main__.py", line 16, in <module>
#     from pip._internal.cli.main import main as _main  # isort:skip # noqa
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#     from pip._internal.cli.autocompletion import autocomplete
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in <module>
#     from pip._internal.cli.main_parser import create_main_parser
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in <module>
#     from pip._internal.cli import cmdoptions
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in <module>
#     from pip._internal.exceptions import CommandError
#   File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#     from pip._vendor.six import iteritems
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#     vendored("cachecontrol")
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#     __import__(modulename, globals(), locals(), level=0)
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/__init__.py", #line 9, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/wrapper.py", line 1, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/adapter.py", line 5, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#  File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#    from OpenSSL import crypto, SSL
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#    class X509StoreFlags(object):
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#    CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
#AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
#root@locums:/opt/open-interpreter# sudo python3 -m pip install --upgrade pip^C
#root@locums:/opt/open-interpreter# sudo python3.10 -m pip install --upgrade pip
#Traceback (most recent call last):
#  File "/usr/lib/python3.10/runpy.py", line 196, in _run_module_as_main
#    return _run_code(code, main_globals, None,
#  File "/usr/lib/python3.10/runpy.py", line 86, in _run_code
#    exec(code, run_globals)
#  File "/usr/lib/python3/dist-packages/pip/__main__.py", line 19, in <module>
#    sys.exit(_main())
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 73, in main
#    command = create_command(cmd_name, isolated=("--isolated" in cmd_args))
#  File "/usr/lib/python3/dist-packages/pip/_internal/commands/__init__.py", line 96, in create_command
#    module = importlib.import_module(module_path)
#  File "/usr/lib/python3.10/importlib/__init__.py", line 126, in import_module
#    return _bootstrap._gcd_import(name[level:], package, level)
#  File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
#  File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
#  File "<frozen importlib._bootstrap_external>", line 883, in exec_module
#  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
#  File "/usr/lib/python3/dist-packages/pip/_internal/commands/install.py", line 24, in <module>
#    from pip._internal.cli.req_command import RequirementCommand
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/req_command.py", line 15, in <module>
#    from pip._internal.index.package_finder import PackageFinder
#  File "/usr/lib/python3/dist-packages/pip/_internal/index/package_finder.py", line 21, in <module>
#    from pip._internal.index.collector import parse_links
#  File "/usr/lib/python3/dist-packages/pip/_internal/index/collector.py", line 12, in <module>
#    from pip._vendor import html5lib, requests
# ImportError: cannot import name 'html5lib' from 'pip._vendor' (/usr/lib/python3/dist-packages/pip/# _vendor/__init__.py)
# root@locums:/opt/open-interpreter# ^C
# root@locums:/opt/open-interpreter# python3.10 --version
# Python 3.10.13
# root@locums:/opt/open-interpreter# python3 --version
# Python 3.8.10
# root@locums:/opt/open-interpreter# alias python3='python3.10'
# root@locums:/opt/open-interpreter# alias python='python3.10'
# root@locums:/opt/open-interpreter# python --version
# Python 3.10.13
# root@locums:/opt/open-interpreter# pip install open-interpreter
# Traceback (most recent call last):
#   File "/usr/bin/pip", line 11, in <module>
#     load_entry_point('pip==20.0.2', 'console_scripts', 'pip')()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in load_entry_point
#     return get_distribution(dist).load_entry_point(group, name)
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in load_entry_point
#     return ep.load()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#     return self.resolve()
#   File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#     module = __import__(self.module_name, fromlist=['__name__'], level=0)
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#     from pip._internal.cli.autocompletion import autocomplete
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in <module>
#     from pip._internal.cli.main_parser import create_main_parser
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in <module>
#     from pip._internal.cli import cmdoptions
#   File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in <module>
#     from pip._internal.exceptions import CommandError
#   File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#     from pip._vendor.six import iteritems
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#     vendored("cachecontrol")
#   File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#     __import__(modulename, globals(), locals(), level=0)
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/__init__.py", line 9, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/wrapper.py", line 1, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/adapter.py", line 5, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#  File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#    from OpenSSL import crypto, SSL
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#    class X509StoreFlags(object):
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#    CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
# Error in sys.excepthook:
# Traceback (most recent call last):
#   File "/usr/lib/python3/dist-packages/apport_python_hook.py", line 72, in apport_excepthook
#     from apport.fileutils import likely_packaged, get_recent_crashes
#   File "/usr/lib/python3/dist-packages/apport/__init__.py", line 5, in <module>
#     from apport.report import Report
#   File "/usr/lib/python3/dist-packages/apport/report.py", line 32, in <module>
#     import apport.fileutils
#   File "/usr/lib/python3/dist-packages/apport/fileutils.py", line 12, in <module>
#     import os, glob, subprocess, os.path, time, pwd, sys, requests_unixsocket
#   File "/usr/lib/python3/dist-packages/requests_unixsocket/__init__.py", line 1, in <module>
#     import requests
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
#   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#   File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#   File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#   File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#   File "<frozen zipimport>", line 259, in load_module
#   File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#   File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#     from OpenSSL import crypto, SSL
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#     class X509StoreFlags(object):
#   File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#     CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'
# 
# Original exception was:
# Traceback (most recent call last):
#  File "/usr/bin/pip", line 11, in <module>
#    load_entry_point('pip==20.0.2', 'console_scripts', 'pip')()
#  File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 490, in load_entry_point
#    return get_distribution(dist).load_entry_point(group, name)
#  File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2854, in load_entry_point
#    return ep.load()
#  File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2445, in load
#    return self.resolve()
#  File "/usr/lib/python3/dist-packages/pkg_resources/__init__.py", line 2451, in resolve
#    module = __import__(self.module_name, fromlist=['__name__'], level=0)
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 10, in <module>
#    from pip._internal.cli.autocompletion import autocomplete
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/autocompletion.py", line 9, in <module>
#    from pip._internal.cli.main_parser import create_main_parser
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main_parser.py", line 7, in <module>
#    from pip._internal.cli import cmdoptions
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/cmdoptions.py", line 24, in <module>
#    from pip._internal.exceptions import CommandError
#  File "/usr/lib/python3/dist-packages/pip/_internal/exceptions.py", line 10, in <module>
#    from pip._vendor.six import iteritems
#  File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 65, in <module>
#    vendored("cachecontrol")
#  File "/usr/lib/python3/dist-packages/pip/_vendor/__init__.py", line 36, in vendored
#    __import__(modulename, globals(), locals(), level=0)
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/__init__.py", line 9, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/wrapper.py", line 1, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/CacheControl-0.12.6-py2.py3-none-any.whl/cachecontrol/adapter.py", line 5, in <module>
#  File "<frozen importlib._bootstrap>", line 991, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
#  File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
#  File "<frozen zipimport>", line 259, in load_module
#  File "/usr/share/python-wheels/requests-2.22.0-py2.py3-none-any.whl/requests/__init__.py", line 95, in <module>
# File "<frozen importlib._bootstrap>", line 991, in _find_and_load
# File "<frozen importlib._bootstrap>", line 975, in _find_and_load_unlocked
# File "<frozen importlib._bootstrap>", line 655, in _load_unlocked
# File "<frozen importlib._bootstrap>", line 618, in _load_backward_compatible
# File "<frozen zipimport>", line 259, in load_module
# File "/usr/share/python-wheels/urllib3-1.25.8-py2.py3-none-any.whl/urllib3/contrib/pyopenssl.py", line 46, in <module>
#  File "/usr/lib/python3/dist-packages/OpenSSL/__init__.py", line 8, in <module>
#    from OpenSSL import crypto, SSL
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1553, in <module>
#    class X509StoreFlags(object):
#  File "/usr/lib/python3/dist-packages/OpenSSL/crypto.py", line 1573, in X509StoreFlags
#    CB_ISSUER_CHECK = _lib.X509_V_FLAG_CB_ISSUER_CHECK
# AttributeError: module 'lib' has no attribute 'X509_V_FLAG_CB_ISSUER_CHECK'

root@locums:/opt/open-interpreter# echo "alias python3='python3.10'" >> ~/.bashrc
root@locums:/opt/open-interpreter# echo "alias python='python3.10'" >> ~/.bashrc
root@locums:/opt/open-interpreter# python3 -m pip install --upgrade pip
#Traceback (most recent call last):
#  File "/usr/lib/python3.10/runpy.py", line 196, in _run_module_as_main
#    return _run_code(code, main_globals, None,
#  File "/usr/lib/python3.10/runpy.py", line 86, in _run_code
#    exec(code, run_globals)
#  File "/usr/lib/python3/dist-packages/pip/__main__.py", line 19, in <module>
#    sys.exit(_main())
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/main.py", line 73, in main
#    command = create_command(cmd_name, isolated=("--isolated" in cmd_args))
#  File "/usr/lib/python3/dist-packages/pip/_internal/commands/__init__.py", line 96, in create_command
#    module = importlib.import_module(module_path)
#  File "/usr/lib/python3.10/importlib/__init__.py", line 126, in import_module
#    return _bootstrap._gcd_import(name[level:], package, level)
#  File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
#  File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
#  File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
#  File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
#  File "<frozen importlib._bootstrap_external>", line 883, in exec_module
#  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
#  File "/usr/lib/python3/dist-packages/pip/_internal/commands/install.py", line 24, in <module>
#    from pip._internal.cli.req_command import RequirementCommand
#  File "/usr/lib/python3/dist-packages/pip/_internal/cli/req_command.py", line 15, in <module>
#     from pip._internal.index.package_finder import PackageFinder
#   File "/usr/lib/python3/dist-packages/pip/_internal/index/package_finder.py", line 21, in <module>
#     from pip._internal.index.collector import parse_links
#   File "/usr/lib/python3/dist-packages/pip/_internal/index/collector.py", line 12, in <module>
#     from pip._vendor import html5lib, requests
# ImportError: cannot import name 'html5lib' from 'pip._vendor' (/usr/lib/python3/dist-packages/pip/ _vendor/__init__.py)

root@locums:/opt/open-interpreter# cd ~
root@locums:~# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                 Dload  Upload   Total   Spent    Left  Speed
# 100 2544k  100 2544k    0     0  35.4M      0 --:--:-- --:--:-- --:--:-- 35.4M

root@locums:~# python3.10 get-pip.py
# Collecting pip
#   Obtaining dependency information for pip from https://files.pythonhosted.org/packages/50/c2/e06851e8cc28dcad7c155f4753da8833ac06a5c704c109313b8d5a62968a/pip-23.2.1-py3-none-any.whl.metadata
#   Downloading pip-23.2.1-py3-none-any.whl.metadata (4.2 kB)
# Downloading pip-23.2.1-py3-none-any.whl (2.1 MB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 31.2 MB/s eta 0:00:00
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found  at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# Installing collected packages: pip
#   Attempting uninstall: pip
#     Found existing installation: pip 20.0.2
#     Uninstalling pip-20.0.2:
#       Successfully uninstalled pip-20.0.2
# Successfully installed pip-23.2.1
# WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with  the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/ warnings/venv

root@locums:~# python3.10 -m pip --version
# pip 23.2.1 from /usr/local/lib/python3.10/dist-packages/pip (python 3.10)

# root@locums:~# python3.10 -m pip install open-interpreter
# Collecting open-interpreter
#   Obtaining dependency information for open-interpreter from https://files.pythonhosted.org/packages/18/16/19e9342c4ac84e09222905360aefffd5d127b060e2dfda6be2d136caa554/open_interpreter-0.1.4-py3-none-any.whl.metadata
#   Downloading open_interpreter-0.1.4-py3-none-any.whl.metadata (10 kB)
# Collecting appdirs<2.0.0,>=1.4.4 (from open-interpreter)
#   Downloading appdirs-1.4.4-py2.py3-none-any.whl (9.6 kB)
# Collecting astor<0.9.0,>=0.8.1 (from open-interpreter)
#   Downloading astor-0.8.1-py2.py3-none-any.whl (27 kB)
# Collecting git-python<2.0.0,>=1.0.3 (from open-interpreter)
#   Downloading git_python-1.0.3-py2.py3-none-any.whl (1.9 kB)
# Collecting huggingface-hub<0.17.0,>=0.16.4 (from open-interpreter)
#   Obtaining dependency information for huggingface-hub<0.17.0,>=0.16.4 from https://files.pythonhosted.org/packages/7f/c4/adcbe9a696c135578cabcbdd7331332daad4d49b7c43688bc2d36b3a47d2/huggingface_hub-0.16.4-py3-none-any.whl.metadata
#   Downloading huggingface_hub-0.16.4-py3-none-any.whl.metadata (12 kB)
# Collecting inquirer<4.0.0,>=3.1.3 (from open-interpreter)
#   Downloading inquirer-3.1.3-py3-none-any.whl (18 kB)
# Collecting litellm<0.2.0,>=0.1.590 (from open-interpreter)
#   Obtaining dependency information for litellm<0.2.0,>=0.1.590 from https://files.pythonhosted.org/packages/7e/e9/456ef657165bf02c35a4477a17a01300aea37b8a7552728fd508ac2b23a9/litellm-0.1.729-py3-none-any.whl.metadata
#   Downloading litellm-0.1.729-py3-none-any.whl.metadata (6.2 kB)
# Collecting openai<0.28.0,>=0.27.8 (from open-interpreter)
#   Obtaining dependency information for openai<0.28.0,>=0.27.8 from https://files.pythonhosted.org/packages/f1/1f/3a0cb7d172f451b2ca8bf65d9196aa3b6878c010d461257c621e4bd48cad/openai-0.27.10-py3-none-any.whl.metadata
#   Downloading openai-0.27.10-py3-none-any.whl.metadata (13 kB)
# Collecting python-dotenv<2.0.0,>=1.0.0 (from open-interpreter)
#   Downloading python_dotenv-1.0.0-py3-none-any.whl (19 kB)
# Collecting rich<14.0.0,>=13.4.2 (from open-interpreter)
#   Obtaining dependency information for rich<14.0.0,>=13.4.2 from https://files.pythonhosted.org/packages/c1/d1/23ba6235ed82883bb416f57179d1db2c05f3fb8e5d83c18660f9ab6f09c9/rich-13.5.3-py3-none-any.whl.metadata
#   Downloading rich-13.5.3-py3-none-any.whl.metadata (18 kB)
# Collecting six<2.0.0,>=1.16.0 (from open-interpreter)
#   Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
# Collecting tiktoken<0.5.0,>=0.4.0 (from open-interpreter)
#   Downloading tiktoken-0.4.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.7 MB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.7/1.7 MB 32.9 MB/s eta 0:00:00
# Collecting tokentrim<0.2.0,>=0.1.9 (from open-interpreter)
#   Obtaining dependency information for tokentrim<0.2.0,>=0.1.9 from https://files.pythonhosted.org/# packages/53/5a/8439751019c66081f96cce70c921a1d779d36fd15e7207c892a09e8b56f6/tokentrim-0.1.# 10-py3-none-any.whl.metadata
#   Downloading tokentrim-0.1.10-py3-none-any.whl.metadata (589 bytes)
# Collecting wget<4.0,>=3.2 (from open-interpreter)
#   Downloading wget-3.2.zip (10 kB)
#   Preparing metadata (setup.py) ... done
# Collecting gitpython (from git-python<2.0.0,>=1.0.3->open-interpreter)
#   Obtaining dependency information for gitpython from https://files.pythonhosted.org/packages/8a/7e/# 20f7e45878b5aed34320fbeeae8f78acc806e7bd708d00b1c6e64b016f5b/GitPython-3.1.37-py3-none-any.whl.metadata
#   Downloading GitPython-3.1.37-py3-none-any.whl.metadata (12 kB)
# Collecting filelock (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for filelock from https://files.pythonhosted.org/packages/5e/5d/# 97afbafd9d584ff1b45fcb354a479a3609bd97f912f8f1f6c563cb1fae21/filelock-3.12.4-py3-none-any.whl.metadata
#   Using cached filelock-3.12.4-py3-none-any.whl.metadata (2.8 kB)
# Collecting fsspec (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for fsspec from https://files.pythonhosted.org/packages/6a/af/# c673e8c663e17bd4fb201a6f029153ad5d7023aa4442d81c7987743db379/fsspec-2023.9.1-py3-none-any.whl.metadata
#   Downloading fsspec-2023.9.1-py3-none-any.whl.metadata (6.7 kB)
# Requirement already satisfied: requests in /usr/lib/python3/dist-packages (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter) (2.22.0)
# Collecting tqdm>=4.42.1 (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for tqdm>=4.42.1 from https://files.pythonhosted.org/packages/00/e5/# f12a80907d0884e6dff9c16d0c0114d81b8cd07dc3ae54c5e962cc83037e/tqdm-4.66.1-py3-none-any.whl.metadata
#   Downloading tqdm-4.66.1-py3-none-any.whl.metadata (57 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 57.6/57.6 kB 5.9 MB/s eta 0:00:00
# Requirement already satisfied: pyyaml>=5.1 in /usr/lib/python3/dist-packages (from huggingface-hub<0.17.# 0,>=0.16.4->open-interpreter) (5.3.1)
# Collecting typing-extensions>=3.7.4.3 (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for typing-extensions>=3.7.4.3 from https://files.pythonhosted.org/# packages/24/21/7d397a4b7934ff4028987914ac1044d3b7d52712f30e2ac7a2ae5bc86dd0/typing_extensions-4.8.# 0-py3-none-any.whl.metadata
#   Downloading typing_extensions-4.8.0-py3-none-any.whl.metadata (3.0 kB)
# Collecting packaging>=20.9 (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Using cached packaging-23.1-py3-none-any.whl (48 kB)
# Collecting blessed>=1.19.0 (from inquirer<4.0.0,>=3.1.3->open-interpreter)
#   Downloading blessed-1.20.0-py2.py3-none-any.whl (58 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 58.4/58.4 kB 10.5 MB/s eta 0:00:00
# Collecting python-editor>=1.0.4 (from inquirer<4.0.0,>=3.1.3->open-interpreter)
#   Downloading python_editor-1.0.4-py3-none-any.whl (4.9 kB)
# Collecting readchar>=3.0.6 (from inquirer<4.0.0,>=3.1.3->open-interpreter)
#   Downloading readchar-4.0.5-py3-none-any.whl (8.5 kB)
# Collecting importlib-metadata<7.0.0,>=6.8.0 (from litellm<0.2.0,>=0.1.590->open-interpreter)
#   Obtaining dependency information for importlib-metadata<7.0.0,>=6.8.0 from https://files.pythonhosted.# org/packages/cc/37/db7ba97e676af155f5fcb1a35466f446eadc9104e25b83366e8088c9c926/importlib_metadata-6.8.# 0-py3-none-any.whl.metadata
#   Using cached importlib_metadata-6.8.0-py3-none-any.whl.metadata (5.1 kB)
# Collecting aiohttp (from openai<0.28.0,>=0.27.8->open-interpreter)
#   Obtaining dependency information for aiohttp from https://files.pythonhosted.org/packages/3e/f6/# fcda07dd1e72260989f0b22dde999ecfe80daa744f23ca167083683399bc/aiohttp-3.8.# 5-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata
#   Downloading aiohttp-3.8.5-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (7.7 kB)
# Collecting markdown-it-py>=2.2.0 (from rich<14.0.0,>=13.4.2->open-interpreter)
#   Obtaining dependency information for markdown-it-py>=2.2.0 from https://files.pythonhosted.org/# packages/42/d7/1ec15b46af6af88f19b8e5ffea08fa375d433c998b8a7639e76935c14f1f/markdown_it_py-3.0.# 0-py3-none-any.whl.metadata
#   Downloading markdown_it_py-3.0.0-py3-none-any.whl.metadata (6.9 kB)
# Collecting pygments<3.0.0,>=2.13.0 (from rich<14.0.0,>=13.4.2->open-interpreter)
#   Obtaining dependency information for pygments<3.0.0,>=2.13.0 from https://files.pythonhosted.org/# packages/43/88/29adf0b44ba6ac85045e63734ae0997d3c58d8b1a91c914d240828d0d73d/Pygments-2.16.# 1-py3-none-any.whl.metadata
#   Downloading Pygments-2.16.1-py3-none-any.whl.metadata (2.5 kB)
# Collecting regex>=2022.1.18 (from tiktoken<0.5.0,>=0.4.0->open-interpreter)
#   Obtaining dependency information for regex>=2022.1.18 from https://files.pythonhosted.org/packages/d1/ df/460ca6171a8494fcf37af43f52f6fac23e38784bb4a26563f6fa01ef6faf/regex-2023.8.# 8-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata
#   Downloading regex-2023.8.8-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (40 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 40.9/40.9 kB 6.3 MB/s eta 0:00:00
# Collecting requests (from huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for requests from https://files.pythonhosted.org/packages/70/8e/# 0e2d847013cb52cd35b38c009bb167a1a26b2ce6cd6965bf26b47bc0bf44/requests-2.31.0-py3-none-any.whl.metadata
#   Using cached requests-2.31.0-py3-none-any.whl.metadata (4.6 kB)
# Collecting wcwidth>=0.1.4 (from blessed>=1.19.0->inquirer<4.0.0,>=3.1.3->open-interpreter)
#   Downloading wcwidth-0.2.6-py2.py3-none-any.whl (29 kB)
# Requirement already satisfied: zipp>=0.5 in /usr/lib/python3/dist-packages (from importlib-metadata<7.0.# 0,>=6.8.0->litellm<0.2.0,>=0.1.590->open-interpreter) (1.0.0)
# Collecting mdurl~=0.1 (from markdown-it-py>=2.2.0->rich<14.0.0,>=13.4.2->open-interpreter)
#   Downloading mdurl-0.1.2-py3-none-any.whl (10.0 kB)
# Requirement already satisfied: setuptools>=41.0 in /usr/lib/python3/dist-packages (from readchar>=3.0.# 6->inquirer<4.0.0,>=3.1.3->open-interpreter) (45.2.0)
# Collecting charset-normalizer<4,>=2 (from requests->huggingface-hub<0.17.0,>=0.16.4->open-interpreter)
#   Obtaining dependency information for charset-normalizer<4,>=2 from https://files.pythonhosted.org/# packages/a4/65/057bf29660aae6ade0816457f8db4e749e5c0bfa2366eb5f67db9912fa4c/charset_normalizer-3.2.# 0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata
#   Downloading charset_normalizer-3.2.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.# metadata (31 kB)
# Requirement already satisfied: idna<4,>=2.5 in /usr/lib/python3/dist-packages (from # requests->huggingface-hub<0.17.0,>=0.16.4->open-interpreter) (2.8)
# Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/lib/python3/dist-packages (from # requests->huggingface-hub<0.17.0,>=0.16.4->open-interpreter) (1.25.8)
# Requirement already satisfied: certifi>=2017.4.17 in /usr/lib/python3/dist-packages (from # requests->huggingface-hub<0.17.0,>=0.16.4->open-interpreter) (2019.11.28)
# Requirement already satisfied: attrs>=17.3.0 in /usr/lib/python3/dist-packages (from aiohttp->openai<0.# 28.0,>=0.27.8->open-interpreter) (19.3.0)
# Collecting multidict<7.0,>=4.5 (from aiohttp->openai<0.28.0,>=0.27.8->open-interpreter)
#   Downloading multidict-6.0.4-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (114 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 114.5/114.5 kB 13.2 MB/s eta 0:00:00
# Collecting async-timeout<5.0,>=4.0.0a3 (from aiohttp->openai<0.28.0,>=0.27.8->open-interpreter)
#   Obtaining dependency information for async-timeout<5.0,>=4.0.0a3 from https://files.pythonhosted.org/# packages/a7/fa/e01228c2938de91d47b307831c62ab9e4001e747789d0b05baf779a6488c/async_timeout-4.0.# 3-py3-none-any.whl.metadata
#   Downloading async_timeout-4.0.3-py3-none-any.whl.metadata (4.2 kB)
# Collecting yarl<2.0,>=1.0 (from aiohttp->openai<0.28.0,>=0.27.8->open-interpreter)
#   Downloading yarl-1.9.2-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (268 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 268.8/268.8 kB 15.7 MB/s eta 0:00:00
# Collecting frozenlist>=1.1.1 (from aiohttp->openai<0.28.0,>=0.27.8->open-interpreter)
#   Obtaining dependency information for frozenlist>=1.1.1 from https://files.pythonhosted.org/packages/1e/# 28/74b8b6451c89c070d34e753d8b65a1e4ce508a6808b18529f36e8c0e2184/frozenlist-1.4.# 0-cp310-cp310-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl.# metadata
#   Downloading frozenlist-1.4.0-cp310-cp310-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.# manylinux2014_x86_64.whl.metadata (5.2 kB)
# Collecting aiosignal>=1.1.2 (from aiohttp->openai<0.28.0,>=0.27.8->open-interpreter)
#   Downloading aiosignal-1.3.1-py3-none-any.whl (7.6 kB)
# Collecting gitdb<5,>=4.0.1 (from gitpython->git-python<2.0.0,>=1.0.3->open-interpreter)
#   Downloading gitdb-4.0.10-py3-none-any.whl (62 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.7/62.7 kB 10.6 MB/s eta 0:00:00
# Collecting smmap<6,>=3.0.1 (from gitdb<5,>=4.0.1->gitpython->git-python<2.0.0,>=1.0.3->open-interpreter)
#   Obtaining dependency information for smmap<6,>=3.0.1 from https://files.pythonhosted.org/packages/a7/# a5/10f97f73544edcdef54409f1d839f6049a0d79df68adbc1ceb24d1aaca42/smmap-5.0.1-py3-none-any.whl.metadata
#   Downloading smmap-5.0.1-py3-none-any.whl.metadata (4.3 kB)
# Downloading open_interpreter-0.1.4-py3-none-any.whl (35 kB)
# Downloading huggingface_hub-0.16.4-py3-none-any.whl (268 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 268.8/268.8 kB 36.7 MB/s eta 0:00:00
# Downloading litellm-0.1.729-py3-none-any.whl (136 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 136.7/136.7 kB 18.1 MB/s eta 0:00:00
# Downloading openai-0.27.10-py3-none-any.whl (76 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 76.5/76.5 kB 9.6 MB/s eta 0:00:00
# Downloading rich-13.5.3-py3-none-any.whl (239 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 239.8/239.8 kB 32.7 MB/s eta 0:00:00
# Downloading tokentrim-0.1.10-py3-none-any.whl (4.1 kB)
# Using cached importlib_metadata-6.8.0-py3-none-any.whl (22 kB)
# Downloading markdown_it_py-3.0.0-py3-none-any.whl (87 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 87.5/87.5 kB 15.3 MB/s eta 0:00:00
# Downloading Pygments-2.16.1-py3-none-any.whl (1.2 MB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 50.1 MB/s eta 0:00:00
# Downloading regex-2023.8.8-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (771 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 771.9/771.9 kB 45.6 MB/s eta 0:00:00
# Using cached requests-2.31.0-py3-none-any.whl (62 kB)
# Downloading tqdm-4.66.1-py3-none-any.whl (78 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 78.3/78.3 kB 11.6 MB/s eta 0:00:00
# Downloading typing_extensions-4.8.0-py3-none-any.whl (31 kB)
# Downloading aiohttp-3.8.5-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.0 MB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.0/1.0 MB 50.1 MB/s eta 0:00:00
# Using cached filelock-3.12.4-py3-none-any.whl (11 kB)
# Downloading fsspec-2023.9.1-py3-none-any.whl (173 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 173.4/173.4 kB 24.0 MB/s eta 0:00:00
# Downloading GitPython-3.1.37-py3-none-any.whl (190 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 190.0/190.0 kB 24.9 MB/s eta 0:00:00
# Downloading async_timeout-4.0.3-py3-none-any.whl (5.7 kB)
# Downloading charset_normalizer-3.2.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (201 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 201.8/201.8 kB 17.6 MB/s eta 0:00:00
# Downloading frozenlist-1.4.0-cp310-cp310-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.# manylinux2014_x86_64.whl (225 kB)
#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 225.7/225.7 kB 27.2 MB/s eta 0:00:00
# Downloading smmap-5.0.1-py3-none-any.whl (24 kB)
# Building wheels for collected packages: wget
#   Building wheel for wget (setup.py) ... done
#   Created wheel for wget: filename=wget-3.2-py3-none-any.whl size=9681 # sha256=e5a7a4877b49673b3854cce6541a7186da381d76ccd7a7814b618cd9ad133938
#   Stored in directory: /root/.cache/pip/wheels/8b/f1/7f/# 5c94f0a7a505ca1c81cd1d9208ae2064675d97582078e6c769
# Successfully built wget
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found # at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# Installing collected packages: wget, wcwidth, python-editor, appdirs, typing-extensions, tqdm, smmap, # six, regex, readchar, python-dotenv, pygments, packaging, multidict, mdurl, importlib-metadata, fsspec, # frozenlist, filelock, charset-normalizer, async-timeout, astor, yarl, requests, markdown-it-py, gitdb, # blessed, aiosignal, tiktoken, rich, inquirer, huggingface-hub, gitpython, aiohttp, tokentrim, openai, # git-python, litellm, open-interpreter
#   Attempting uninstall: six
#     Found existing installation: six 1.14.0
#     Uninstalling six-1.14.0:
#       Successfully uninstalled six-1.14.0
#   Attempting uninstall: importlib-metadata
#     Found existing installation: importlib-metadata 1.5.0
#     Uninstalling importlib-metadata-1.5.0:
#       Successfully uninstalled importlib-metadata-1.5.0
#   Attempting uninstall: requests
#     Found existing installation: requests 2.22.0
#     Uninstalling requests-2.22.0:
#       Successfully uninstalled requests-2.22.0
# ERROR: pip's dependency resolver does not currently take into account all the packages that are # installed. This behaviour is the source of the following dependency conflicts.
# launchpadlib 1.10.13 requires testresources, which is not installed.
# Successfully installed aiohttp-3.8.5 aiosignal-1.3.1 appdirs-1.4.4 astor-0.8.1 async-timeout-4.0.3 # blessed-1.20.0 charset-normalizer-3.2.0 filelock-3.12.4 frozenlist-1.4.0 fsspec-2023.9.1 git-python-1.0.# 3 gitdb-4.0.10 gitpython-3.1.37 huggingface-hub-0.16.4 importlib-metadata-6.8.0 inquirer-3.1.3 litellm-0.# 1.729 markdown-it-py-3.0.0 mdurl-0.1.2 multidict-6.0.4 open-interpreter-0.1.4 openai-0.27.10 # packaging-23.1 pygments-2.16.1 python-dotenv-1.0.0 python-editor-1.0.4 readchar-4.0.5 regex-2023.8.8 # requests-2.31.0 rich-13.5.3 six-1.16.0 smmap-5.0.1 tiktoken-0.4.0 tokentrim-0.1.10 tqdm-4.66.1 # typing-extensions-4.8.0 wcwidth-0.2.6 wget-3.2 yarl-1.9.2
# WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with # the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/# warnings/venv

root@locums:~# python3.10 -m pip install testresources
# Collecting testresources
#   Downloading testresources-2.0.1-py2.py3-none-any.whl (36 kB)
# Requirement already satisfied: pbr>=1.8 in /usr/lib/python3/dist-packages (from testresources) (5.4.5)
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found # at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# Installing collected packages: testresources
# Successfully installed testresources-2.0.1
# WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with # the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/# warnings/venv
# root@locums:~ python3.10 -m pip check
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found # at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# pygobject 3.36.0 requires pycairo, which is not installed.

root@locums:~# python3.10 -m pip install pycairo
# Collecting pycairo
#   Downloading pycairo-1.24.0.tar.gz (344 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 344.9/344.9 kB 19.4 MB/s eta 0:00:00
#   Installing build dependencies ... done
#   Getting requirements to build wheel ... done
#   Installing backend dependencies ... done
#   Preparing metadata (pyproject.toml) ... done
# Building wheels for collected packages: pycairo
#   Building wheel for pycairo (pyproject.toml) ... error
#   error: subprocess-exited-with-error
# 
#   × Building wheel for pycairo (pyproject.toml) did not run successfully.
#   │ exit code: 1
#   ╰─> [12 lines of output]
#       running bdist_wheel
#       running build
#       running build_py
#       creating build
#       creating build/lib.linux-x86_64-cpython-310
#       creating build/lib.linux-x86_64-cpython-310/cairo
#       copying cairo/__init__.py -> build/lib.linux-x86_64-cpython-310/cairo
#       copying cairo/__init__.pyi -> build/lib.linux-x86_64-cpython-310/cairo
#       copying cairo/py.typed -> build/lib.linux-x86_64-cpython-310/cairo
#       running build_ext
#       'pkg-config' not found.
#       Command ['pkg-config', '--print-errors', '--exists', 'cairo >= 1.15.10']
#       [end of output]
# 
#   note: This error originates from a subprocess, and is likely not a problem with pip.
#   ERROR: Failed building wheel for pycairo
# Failed to build pycairo
# ERROR: Could not build wheels for pycairo, which is required to install pyproject.toml-based projects

root@locums:~# apt-get update
# Hit:1 http://ppa.launchpad.net/deadsnakes/ppa/ubuntu focal InRelease
# Hit:2 http://security.ubuntu.com/ubuntu focal-security InRelease
# Hit:3 http://ppa.launchpad.net/ondrej/php/ubuntu focal InRelease
# Hit:4 http://mirrors.digitalocean.com/ubuntu focal InRelease
# Hit:5 http://mirrors.digitalocean.com/ubuntu focal-updates InRelease
# Hit:6 https://repos-droplet.digitalocean.com/apt/droplet-agent main InRelease
# Get:7 https://deb.nodesource.com/node_16.x focal InRelease [4583 B]
# Hit:8 http://mirrors.digitalocean.com/ubuntu focal-backports InRelease
# Hit:9 https://dl.yarnpkg.com/debian stable InRelease
# Fetched 4583 B in 2s (2771 B/s)
# Reading package lists... Done

root@locums:~# apt-get install pkg-config libcairo2-dev
# Reading package lists... Done
# Building dependency tree
# Reading state information... Done
# The following additional packages will be installed:
#   libblkid-dev libblkid1 libcairo-gobject2 libcairo-script-interpreter2 libcairo2 libffi-dev libfontconfig1-dev
#   libfreetype-dev libfreetype6-dev libglib2.0-dev libglib2.0-dev-bin libice-dev libmount-dev libmount1 libpcre16-3
#   libpcre2-16-0 libpcre2-32-0 libpcre2-dev libpcre2-posix3 libpcre3 libpcre3-dev libpcre32-3 libpcrecpp0v5 libpixman-1-0
#   libpixman-1-dev libpng-dev libpng-tools libpthread-stubs0-dev libselinux1-dev libsepol1-dev libsm-dev libuuid1 libx11-dev
#   libxau-dev libxcb-render0 libxcb-render0-dev libxcb-shm0 libxcb-shm0-dev libxcb1-dev libxdmcp-dev libxext-dev
#   libxrender-dev libxrender1 uuid-dev x11proto-core-dev x11proto-dev x11proto-xext-dev xorg-sgml-doctools xtrans-dev
# Suggested packages:
#   libcairo2-doc freetype2-doc libgirepository1.0-dev libglib2.0-doc libgdk-pixbuf2.0-bin | libgdk-pixbuf2.0-dev
#   libxml2-utils libice-doc libsm-doc libx11-doc libxcb-doc libxext-doc
# The following NEW packages will be installed:
#   libblkid-dev libcairo-gobject2 libcairo-script-interpreter2 libcairo2 libcairo2-dev libffi-dev libfontconfig1-dev
#   libfreetype-dev libfreetype6-dev libglib2.0-dev libglib2.0-dev-bin libice-dev libmount-dev libpcre16-3 libpcre2-16-0
#   libpcre2-32-0 libpcre2-dev libpcre2-posix3 libpcre3-dev libpcre32-3 libpcrecpp0v5 libpixman-1-0 libpixman-1-dev libpng-dev
#   libpng-tools libpthread-stubs0-dev libselinux1-dev libsepol1-dev libsm-dev libx11-dev libxau-dev libxcb-render0
#   libxcb-render0-dev libxcb-shm0 libxcb-shm0-dev libxcb1-dev libxdmcp-dev libxext-dev libxrender-dev libxrender1 pkg-config
#   uuid-dev x11proto-core-dev x11proto-dev x11proto-xext-dev xorg-sgml-doctools xtrans-dev
# The following packages will be upgraded:
#   libblkid1 libmount1 libpcre3 libuuid1
# 4 upgraded, 47 newly installed, 0 to remove and 74 not upgraded.
# Need to get 9971 kB of archives.
# After this operation, 40.7 MB of additional disk space will be used.
# Do you want to continue? [Y/n] y
# Get:1 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre3 amd64 2:8.45-1+ubuntu20.04.1# +deb.sury.org+1 [240 kB]
# Get:2 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre16-3 amd64 2:8.45-1+ubuntu20.04.# 1+deb.sury.org+1 [158 kB]
# Get:3 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre32-3 amd64 2:8.45-1+ubuntu20.04.# 1+deb.sury.org+1 [148 kB]
# Get:4 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcrecpp0v5 amd64 2:8.45-1+ubuntu20.# 04.1+deb.sury.org+1 [51.1 kB]
# Get:5 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre3-dev amd64 2:8.45-1+ubuntu20.# 04.1+deb.sury.org+1 [552 kB]
# Get:6 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre2-16-0 amd64 10.40-1+ubuntu20.# 04.1+deb.sury.org+1 [190 kB]
# Get:7 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libblkid1 amd64 2.34-0.1ubuntu9.4 # [137 kB]
# Get:8 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre2-32-0 amd64 10.40-1+ubuntu20.# 04.1+deb.sury.org+1 [179 kB]
# Get:9 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre2-posix3 amd64 10.40-1+ubuntu20.# 04.1+deb.sury.org+1 [8636 B]
# Get:10 http://ppa.launchpad.net/ondrej/php/ubuntu focal/main amd64 libpcre2-dev amd64 10.40-1+ubuntu20.# 04.1+deb.sury.org+1 [694 kB]
# Get:11 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libmount1 amd64 2.34-0.1ubuntu9.4 # [150 kB]
# Get:12 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libuuid1 amd64 2.34-0.1ubuntu9.4 # [20.0 kB]
# Get:13 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libpixman-1-0 amd64 0.38.# 4-0ubuntu2.1 [227 kB]
# Get:14 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxcb-render0 amd64 1.14-2 [14.8 kB]
# Get:15 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxcb-shm0 amd64 1.14-2 [5584 B]
# Get:16 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxrender1 amd64 1:0.9.10-1 [18.7 kB]
# Get:17 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libcairo2 amd64 1.16.0-4ubuntu1 [583 kB]
# Get:18 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libcairo-gobject2 amd64 1.16.0-4ubuntu1 # [17.2 kB]
# Get:19 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libcairo-script-interpreter2 amd64 1.16.# 0-4ubuntu1 [54.2 kB]
# Get:20 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libpng-dev amd64 1.6.37-2 [175 kB]
# Get:21 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libfreetype-dev amd64 2.10.# 1-2ubuntu0.3 [493 kB]
# Get:22 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libfreetype6-dev amd64 2.10.# 1-2ubuntu0.3 [9808 B]
# Get:23 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 uuid-dev amd64 2.34-0.1ubuntu9.4 # [33.6 kB]
# Get:24 http://mirrors.digitalocean.com/ubuntu focal/main amd64 pkg-config amd64 0.29.1-0ubuntu4 [45.5 kB]
# Get:25 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libfontconfig1-dev amd64 2.13.1-2ubuntu3 # [731 kB]
# Get:26 http://mirrors.digitalocean.com/ubuntu focal/main amd64 xorg-sgml-doctools all 1:1.11-1 [12.9 kB]
# Get:27 http://mirrors.digitalocean.com/ubuntu focal/main amd64 x11proto-dev all 2019.2-1ubuntu1 [594 kB]
# Get:28 http://mirrors.digitalocean.com/ubuntu focal/main amd64 x11proto-core-dev all 2019.2-1ubuntu1 # [2620 B]
# Get:29 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxau-dev amd64 1:1.0.9-0ubuntu1 [9552 B]
# Get:30 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxdmcp-dev amd64 1:1.1.3-0ubuntu1 [25.3 # kB]
# Get:31 http://mirrors.digitalocean.com/ubuntu focal/main amd64 xtrans-dev all 1.4.0-1 [68.9 kB]
# Get:32 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libpthread-stubs0-dev amd64 0.4-1 [5384 B]
# Get:33 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxcb1-dev amd64 1.14-2 [80.5 kB]
# Get:34 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libx11-dev amd64 2:1.6.9-2ubuntu1.# 5 [647 kB]
# Get:35 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxrender-dev amd64 1:0.9.10-1 [24.9 kB]
# Get:36 http://mirrors.digitalocean.com/ubuntu focal/main amd64 x11proto-xext-dev all 2019.2-1ubuntu1 # [2616 B]
# Get:37 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxext-dev amd64 2:1.3.4-0ubuntu1 [82.2 # kB]
# Get:38 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libice-dev amd64 2:1.0.10-0ubuntu1 [47.8 # kB]
# Get:39 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libsm-dev amd64 2:1.2.3-1 [17.0 kB]
# Get:40 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libpixman-1-dev amd64 0.38.# 4-0ubuntu2.1 [243 kB]
# Get:41 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxcb-render0-dev amd64 1.14-2 [18.4 kB]
# Get:42 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libxcb-shm0-dev amd64 1.14-2 [6716 B]
# Get:43 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libffi-dev amd64 3.3-4 [57.0 kB]
# Get:44 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libglib2.0-dev-bin amd64 2.64.# 6-1~ubuntu20.04.6 [109 kB]
# Get:45 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libblkid-dev amd64 2.34-0.# 1ubuntu9.4 [167 kB]
# Get:46 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libmount-dev amd64 2.34-0.# 1ubuntu9.4 [177 kB]
# Get:47 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libsepol1-dev amd64 3.0-1ubuntu0.# 1 [325 kB]
# Get:48 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libselinux1-dev amd64 3.0-1build2 [151 kB]
# Get:49 http://mirrors.digitalocean.com/ubuntu focal-updates/main amd64 libglib2.0-dev amd64 2.64.# 6-1~ubuntu20.04.6 [1507 kB]
# Get:50 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libcairo2-dev amd64 1.16.0-4ubuntu1 [627 # kB]
# Get:51 http://mirrors.digitalocean.com/ubuntu focal/main amd64 libpng-tools amd64 1.6.37-2 [26.1 kB]
# Fetched 9971 kB in 2s (6247 kB/s)
# Extracting templates from packages: 100%
# (Reading database ... 120584 files and directories currently installed.)
# Preparing to unpack .../libblkid1_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking libblkid1:amd64 (2.34-0.1ubuntu9.4) over (2.34-0.1ubuntu9.3) ...
# Setting up libblkid1:amd64 (2.34-0.1ubuntu9.4) ...
# (Reading database ... 120584 files and directories currently installed.)
# Preparing to unpack .../libmount1_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking libmount1:amd64 (2.34-0.1ubuntu9.4) over (2.34-0.1ubuntu9.3) ...
# Setting up libmount1:amd64 (2.34-0.1ubuntu9.4) ...
# (Reading database ... 120584 files and directories currently installed.)
# Preparing to unpack .../libuuid1_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking libuuid1:amd64 (2.34-0.1ubuntu9.4) over (2.34-0.1ubuntu9.3) ...
# Setting up libuuid1:amd64 (2.34-0.1ubuntu9.4) ...
# (Reading database ... 120584 files and directories currently installed.)
# Preparing to unpack .../libpcre3_2%3a8.45-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) over (2:8.44-2+ubuntu20.04.1+deb.sury.# org+1) ...
# Setting up libpcre3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpixman-1-0:amd64.
# (Reading database ... 120584 files and directories currently installed.)
# Preparing to unpack .../00-libpixman-1-0_0.38.4-0ubuntu2.1_amd64.deb ...
# Unpacking libpixman-1-0:amd64 (0.38.4-0ubuntu2.1) ...
# Selecting previously unselected package libxcb-render0:amd64.
# Preparing to unpack .../01-libxcb-render0_1.14-2_amd64.deb ...
# Unpacking libxcb-render0:amd64 (1.14-2) ...
# Selecting previously unselected package libxcb-shm0:amd64.
# Preparing to unpack .../02-libxcb-shm0_1.14-2_amd64.deb ...
# Unpacking libxcb-shm0:amd64 (1.14-2) ...
# Selecting previously unselected package libxrender1:amd64.
# Preparing to unpack .../03-libxrender1_1%3a0.9.10-1_amd64.deb ...
# Unpacking libxrender1:amd64 (1:0.9.10-1) ...
# Selecting previously unselected package libcairo2:amd64.
# Preparing to unpack .../04-libcairo2_1.16.0-4ubuntu1_amd64.deb ...
# Unpacking libcairo2:amd64 (1.16.0-4ubuntu1) ...
# Selecting previously unselected package libcairo-gobject2:amd64.
# Preparing to unpack .../05-libcairo-gobject2_1.16.0-4ubuntu1_amd64.deb ...
# Unpacking libcairo-gobject2:amd64 (1.16.0-4ubuntu1) ...
# Selecting previously unselected package libcairo-script-interpreter2:amd64.
# Preparing to unpack .../06-libcairo-script-interpreter2_1.16.0-4ubuntu1_amd64.deb ...
# Unpacking libcairo-script-interpreter2:amd64 (1.16.0-4ubuntu1) ...
# Selecting previously unselected package libpng-dev:amd64.
# Preparing to unpack .../07-libpng-dev_1.6.37-2_amd64.deb ...
# Unpacking libpng-dev:amd64 (1.6.37-2) ...
# Selecting previously unselected package libfreetype-dev:amd64.
# Preparing to unpack .../08-libfreetype-dev_2.10.1-2ubuntu0.3_amd64.deb ...
# Unpacking libfreetype-dev:amd64 (2.10.1-2ubuntu0.3) ...
# Selecting previously unselected package libfreetype6-dev:amd64.
# Preparing to unpack .../09-libfreetype6-dev_2.10.1-2ubuntu0.3_amd64.deb ...
# Unpacking libfreetype6-dev:amd64 (2.10.1-2ubuntu0.3) ...
# Selecting previously unselected package uuid-dev:amd64.
# Preparing to unpack .../10-uuid-dev_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking uuid-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Selecting previously unselected package pkg-config.
# Preparing to unpack .../11-pkg-config_0.29.1-0ubuntu4_amd64.deb ...
# Unpacking pkg-config (0.29.1-0ubuntu4) ...
# Selecting previously unselected package libfontconfig1-dev:amd64.
# Preparing to unpack .../12-libfontconfig1-dev_2.13.1-2ubuntu3_amd64.deb ...
# Unpacking libfontconfig1-dev:amd64 (2.13.1-2ubuntu3) ...
# Selecting previously unselected package xorg-sgml-doctools.
# Preparing to unpack .../13-xorg-sgml-doctools_1%3a1.11-1_all.deb ...
# Unpacking xorg-sgml-doctools (1:1.11-1) ...
# Selecting previously unselected package x11proto-dev.
# Preparing to unpack .../14-x11proto-dev_2019.2-1ubuntu1_all.deb ...
# Unpacking x11proto-dev (2019.2-1ubuntu1) ...
# Selecting previously unselected package x11proto-core-dev.
# Preparing to unpack .../15-x11proto-core-dev_2019.2-1ubuntu1_all.deb ...
# Unpacking x11proto-core-dev (2019.2-1ubuntu1) ...
# Selecting previously unselected package libxau-dev:amd64.
# Preparing to unpack .../16-libxau-dev_1%3a1.0.9-0ubuntu1_amd64.deb ...
# Unpacking libxau-dev:amd64 (1:1.0.9-0ubuntu1) ...
# Selecting previously unselected package libxdmcp-dev:amd64.
# Preparing to unpack .../17-libxdmcp-dev_1%3a1.1.3-0ubuntu1_amd64.deb ...
# Unpacking libxdmcp-dev:amd64 (1:1.1.3-0ubuntu1) ...
# Selecting previously unselected package xtrans-dev.
# Preparing to unpack .../18-xtrans-dev_1.4.0-1_all.deb ...
# Unpacking xtrans-dev (1.4.0-1) ...
# Selecting previously unselected package libpthread-stubs0-dev:amd64.
# Preparing to unpack .../19-libpthread-stubs0-dev_0.4-1_amd64.deb ...
# Unpacking libpthread-stubs0-dev:amd64 (0.4-1) ...
# Selecting previously unselected package libxcb1-dev:amd64.
# Preparing to unpack .../20-libxcb1-dev_1.14-2_amd64.deb ...
# Unpacking libxcb1-dev:amd64 (1.14-2) ...
# Selecting previously unselected package libx11-dev:amd64.
# Preparing to unpack .../21-libx11-dev_2%3a1.6.9-2ubuntu1.5_amd64.deb ...
# Unpacking libx11-dev:amd64 (2:1.6.9-2ubuntu1.5) ...
# Selecting previously unselected package libxrender-dev:amd64.
# Preparing to unpack .../22-libxrender-dev_1%3a0.9.10-1_amd64.deb ...
# Unpacking libxrender-dev:amd64 (1:0.9.10-1) ...
# Selecting previously unselected package x11proto-xext-dev.
# Preparing to unpack .../23-x11proto-xext-dev_2019.2-1ubuntu1_all.deb ...
# Unpacking x11proto-xext-dev (2019.2-1ubuntu1) ...
# Selecting previously unselected package libxext-dev:amd64.
# Preparing to unpack .../24-libxext-dev_2%3a1.3.4-0ubuntu1_amd64.deb ...
# Unpacking libxext-dev:amd64 (2:1.3.4-0ubuntu1) ...
# Selecting previously unselected package libice-dev:amd64.
# Preparing to unpack .../25-libice-dev_2%3a1.0.10-0ubuntu1_amd64.deb ...
# Unpacking libice-dev:amd64 (2:1.0.10-0ubuntu1) ...
# Selecting previously unselected package libsm-dev:amd64.
# Preparing to unpack .../26-libsm-dev_2%3a1.2.3-1_amd64.deb ...
# Unpacking libsm-dev:amd64 (2:1.2.3-1) ...
# Selecting previously unselected package libpixman-1-dev:amd64.
# Preparing to unpack .../27-libpixman-1-dev_0.38.4-0ubuntu2.1_amd64.deb ...
# Unpacking libpixman-1-dev:amd64 (0.38.4-0ubuntu2.1) ...
# Selecting previously unselected package libxcb-render0-dev:amd64.
# Preparing to unpack .../28-libxcb-render0-dev_1.14-2_amd64.deb ...
# Unpacking libxcb-render0-dev:amd64 (1.14-2) ...
# Selecting previously unselected package libxcb-shm0-dev:amd64.
# Preparing to unpack .../29-libxcb-shm0-dev_1.14-2_amd64.deb ...
# Unpacking libxcb-shm0-dev:amd64 (1.14-2) ...
# Selecting previously unselected package libffi-dev:amd64.
# Preparing to unpack .../30-libffi-dev_3.3-4_amd64.deb ...
# Unpacking libffi-dev:amd64 (3.3-4) ...
# Selecting previously unselected package libglib2.0-dev-bin.
# Preparing to unpack .../31-libglib2.0-dev-bin_2.64.6-1~ubuntu20.04.6_amd64.deb ...
# Unpacking libglib2.0-dev-bin (2.64.6-1~ubuntu20.04.6) ...
# Selecting previously unselected package libblkid-dev:amd64.
# Preparing to unpack .../32-libblkid-dev_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking libblkid-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Selecting previously unselected package libmount-dev:amd64.
# Preparing to unpack .../33-libmount-dev_2.34-0.1ubuntu9.4_amd64.deb ...
# Unpacking libmount-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Selecting previously unselected package libpcre16-3:amd64.
# Preparing to unpack .../34-libpcre16-3_2%3a8.45-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre16-3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcre32-3:amd64.
# Preparing to unpack .../35-libpcre32-3_2%3a8.45-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre32-3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcrecpp0v5:amd64.
# Preparing to unpack .../36-libpcrecpp0v5_2%3a8.45-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcrecpp0v5:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcre3-dev:amd64.
# Preparing to unpack .../37-libpcre3-dev_2%3a8.45-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre3-dev:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libsepol1-dev:amd64.
# Preparing to unpack .../38-libsepol1-dev_3.0-1ubuntu0.1_amd64.deb ...
# Unpacking libsepol1-dev:amd64 (3.0-1ubuntu0.1) ...
# Selecting previously unselected package libpcre2-16-0:amd64.
# Preparing to unpack .../39-libpcre2-16-0_10.40-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre2-16-0:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcre2-32-0:amd64.
# Preparing to unpack .../40-libpcre2-32-0_10.40-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre2-32-0:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcre2-posix3:amd64.
# Preparing to unpack .../41-libpcre2-posix3_10.40-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre2-posix3:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libpcre2-dev:amd64.
# Preparing to unpack .../42-libpcre2-dev_10.40-1+ubuntu20.04.1+deb.sury.org+1_amd64.deb ...
# Unpacking libpcre2-dev:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Selecting previously unselected package libselinux1-dev:amd64.
# Preparing to unpack .../43-libselinux1-dev_3.0-1build2_amd64.deb ...
# Unpacking libselinux1-dev:amd64 (3.0-1build2) ...
# Selecting previously unselected package libglib2.0-dev:amd64.
# Preparing to unpack .../44-libglib2.0-dev_2.64.6-1~ubuntu20.04.6_amd64.deb ...
# Unpacking libglib2.0-dev:amd64 (2.64.6-1~ubuntu20.04.6) ...
# Selecting previously unselected package libcairo2-dev:amd64.
# Preparing to unpack .../45-libcairo2-dev_1.16.0-4ubuntu1_amd64.deb ...
# Unpacking libcairo2-dev:amd64 (1.16.0-4ubuntu1) ...
# Selecting previously unselected package libpng-tools.
# Preparing to unpack .../46-libpng-tools_1.6.37-2_amd64.deb ...
# Unpacking libpng-tools (1.6.37-2) ...
# Setting up libpcrecpp0v5:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up libglib2.0-dev-bin (2.64.6-1~ubuntu20.04.6) ...
# Setting up libpixman-1-0:amd64 (0.38.4-0ubuntu2.1) ...
# Setting up libpixman-1-dev:amd64 (0.38.4-0ubuntu2.1) ...
# Setting up libpcre16-3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up libxrender1:amd64 (1:0.9.10-1) ...
# Setting up libpng-tools (1.6.37-2) ...
# Setting up libxcb-render0:amd64 (1.14-2) ...
# Setting up libpng-dev:amd64 (1.6.37-2) ...
# Setting up libsepol1-dev:amd64 (3.0-1ubuntu0.1) ...
# Setting up libxcb-shm0:amd64 (1.14-2) ...
# Setting up libffi-dev:amd64 (3.3-4) ...
# Setting up libpthread-stubs0-dev:amd64 (0.4-1) ...
# Setting up libcairo2:amd64 (1.16.0-4ubuntu1) ...
# Setting up libpcre2-16-0:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up libfreetype-dev:amd64 (2.10.1-2ubuntu0.3) ...
# Setting up xtrans-dev (1.4.0-1) ...
# Setting up libpcre2-32-0:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up uuid-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Setting up libpcre32-3:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up pkg-config (0.29.1-0ubuntu4) ...
# Setting up libpcre2-posix3:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up xorg-sgml-doctools (1:1.11-1) ...
# Setting up libcairo-gobject2:amd64 (1.16.0-4ubuntu1) ...
# Setting up x11proto-dev (2019.2-1ubuntu1) ...
# Setting up libcairo-script-interpreter2:amd64 (1.16.0-4ubuntu1) ...
# Setting up libblkid-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Setting up libxau-dev:amd64 (1:1.0.9-0ubuntu1) ...
# Setting up libpcre2-dev:amd64 (10.40-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up libice-dev:amd64 (2:1.0.10-0ubuntu1) ...
# Setting up libsm-dev:amd64 (2:1.2.3-1) ...
# Setting up libselinux1-dev:amd64 (3.0-1build2) ...
# Setting up libpcre3-dev:amd64 (2:8.45-1+ubuntu20.04.1+deb.sury.org+1) ...
# Setting up libfreetype6-dev:amd64 (2.10.1-2ubuntu0.3) ...
# Setting up libxdmcp-dev:amd64 (1:1.1.3-0ubuntu1) ...
# Setting up x11proto-core-dev (2019.2-1ubuntu1) ...
# Setting up x11proto-xext-dev (2019.2-1ubuntu1) ...
# Setting up libmount-dev:amd64 (2.34-0.1ubuntu9.4) ...
# Setting up libfontconfig1-dev:amd64 (2.13.1-2ubuntu3) ...
# Setting up libxcb1-dev:amd64 (1.14-2) ...
# Setting up libx11-dev:amd64 (2:1.6.9-2ubuntu1.5) ...
# Setting up libxcb-shm0-dev:amd64 (1.14-2) ...
# Setting up libglib2.0-dev:amd64 (2.64.6-1~ubuntu20.04.6) ...
# Setting up libxcb-render0-dev:amd64 (1.14-2) ...
# Setting up libxext-dev:amd64 (2:1.3.4-0ubuntu1) ...
# Setting up libxrender-dev:amd64 (1:0.9.10-1) ...
# Processing triggers for install-info (6.7.0.dfsg.2-5) ...
# Processing triggers for libglib2.0-0:amd64 (2.64.6-1~ubuntu20.04.6) ...
# Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
# Processing triggers for man-db (2.9.1-1) ...
# Setting up libcairo2-dev:amd64 (1.16.0-4ubuntu1) ...

root@locums:~# python3.10 -m pip install pycairo
# Collecting pycairo
#   Using cached pycairo-1.24.0.tar.gz (344 kB)
#   Installing build dependencies ... done
#   Getting requirements to build wheel ... done
#   Installing backend dependencies ... done
#   Preparing metadata (pyproject.toml) ... done
# Building wheels for collected packages: pycairo
#   Building wheel for pycairo (pyproject.toml) ... done
#   Created wheel for pycairo: filename=pycairo-1.24.0-cp310-cp310-linux_x86_64.whl size=331593 sha256=707ea606cac89c33e7bec5ced4301b33a52b4f90f69d33aeee99217047a091ce
#   Stored in directory: /root/.cache/pip/wheels/42/f6/f8/ad6377458a0a8eea738a091a499ca95d020c87e76d5d1dd6f5
# Successfully built pycairo
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found # at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# Installing collected packages: pycairo
# Successfully installed pycairo-1.24.0
# WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
# root@locums:~# python3.10 -m pip check
# DEPRECATION: distro-info 0.23ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of distro-info or contact the # author to suggest that they release a version with a conforming version number. Discussion can be found # at https://github.com/pypa/pip/issues/12063
# DEPRECATION: python-debian 0.1.36ubuntu1 has a non-standard version number. pip 23.3 will enforce this # behaviour change. A possible replacement is to upgrade to a newer version of python-debian or contact # the author to suggest that they release a version with a conforming version number. Discussion can be # found at https://github.com/pypa/pip/issues/12063
# No broken requirements found.

root@locums:~# python3.10 -m pip list
# Package                Version
# ---------------------- -------------
# acme                   1.1.0
# aiohttp                3.8.5
# aiosignal              1.3.1
# appdirs                1.4.4
# astor                  0.8.1
# async-timeout          4.0.3
# attrs                  19.3.0
# Automat                0.8.0
# blessed                1.20.0
# blinker                1.4
# cached-property        1.5.1
# certbot                0.40.0
# certbot-apache         0.39.0
# certifi                2019.11.28
# chardet                3.0.4
# charset-normalizer     3.2.0
# Click                  7.0
# cloud-init             23.1.2
# colorama               0.4.3
# command-not-found      0.3
# ConfigArgParse         0.13.0
# configobj              5.0.6
# constantly             15.1.0
# cryptography           2.8
# dbus-python            1.2.16
# distro                 1.4.0
# distro-info            0.23ubuntu1
# docker                 4.1.0
# docker-compose         1.25.0
# dockerpty              0.4.1
# docopt                 0.6.2
# entrypoints            0.3
# fail2ban               0.11.1
# filelock               3.12.4
# frozenlist             1.4.0
# fsspec                 2023.9.1
# future                 0.18.2
# git-python             1.0.3
# gitdb                  4.0.10
# GitPython              3.1.37
# httplib2               0.14.0
# huggingface-hub        0.16.4
# hyperlink              19.0.0
# idna                   2.8
# importlib-metadata     6.8.0
# incremental            16.10.1
# inquirer               3.1.3
# Jinja2                 2.10.1
# josepy                 1.2.0
# jsonpatch              1.22
# jsonpointer            2.0
# jsonschema             3.2.0
# keyring                18.0.1
# language-selector      0.1
# launchpadlib           1.10.13
# lazr.restfulclient     0.14.2
# lazr.uri               1.0.3
# litellm                0.1.729
# markdown-it-py         3.0.0
# MarkupSafe             1.1.0
# mdurl                  0.1.2
# mock                   3.0.5
# more-itertools         4.2.0
# multidict              6.0.4
# netifaces              0.10.4
# oauthlib               3.1.0
# open-interpreter       0.1.4
# openai                 0.27.10
# packaging              23.1
# parsedatetime          2.4
# pbr                    5.4.5
# pexpect                4.6.0
# pip                    23.2.1
# pyasn1                 0.4.2
# pyasn1-modules         0.2.1
# pycairo                1.24.0
# Pygments               2.16.1
# PyGObject              3.36.0
# PyHamcrest             1.9.0
# PyICU                  2.4.2
# pyinotify              0.9.6
# PyJWT                  1.7.1
# pymacaroons            0.13.0
# PyNaCl                 1.3.0
# pyOpenSSL              19.0.0
# pyRFC3339              1.1
# pyrsistent             0.15.5
# pyserial               3.4
# python-apt             2.0.1
# python-augeas          0.5.0
# python-debian          0.1.36ubuntu1
# python-dotenv          1.0.0
# python-editor          1.0.4
# pytz                   2019.3
# PyYAML                 5.3.1
# readchar               4.0.5
# regex                  2023.8.8
# requests               2.31.0
# requests-toolbelt      0.8.0
# requests-unixsocket    0.2.0
# rich                   13.5.3
# SecretStorage          2.3.1
# service-identity       18.1.0
# setuptools             45.2.0
# simplejson             3.16.0
# six                    1.16.0
# smmap                  5.0.1
# sos                    4.4
# ssh-import-id          5.10
# systemd-python         234
# testresources          2.0.1
# texttable              1.6.2
# tiktoken               0.4.0
# tokentrim              0.1.10
# tqdm                   4.66.1
# Twisted                18.9.0
# typing_extensions      4.8.0
# ubuntu-advantage-tools 8001
# ufw                    0.36
# unattended-upgrades    0.1
# urllib3                1.25.8
# wadllib                1.3.3
# wcwidth                0.2.6
# websocket-client       0.53.0
# wget                   3.2
# wheel                  0.34.2
# yarl                   1.9.2
# zipp                   1.0.0
# zope.component         4.3.0
# zope.event             4.4
# zope.hookable          5.0.0
# zope.interface         4.7.1

root@locums:~# interpreter
# ●
# 
# Welcome to Open Interpreter.
# 
# ───────────────────────────────────────────────────────────────────────────────────
# 
# ▌ OpenAI API key not found
# 
# To use GPT-4 (recommended) please provide an OpenAI API key.
# 
# To use Code-Llama (free but less capable) press enter.
```

So that was my process, hope you find it easier. Please add to this file with your experience of installing Interpreter