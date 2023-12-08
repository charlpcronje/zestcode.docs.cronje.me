# Rocky Linux

**Why Rocky Linux?** Rocky Linux is a community-supported enterprise operating system that aims to be a downstream, binary-compatible release based on the source code of Red Hat Enterprise Linux (RHEL). Here's why it can be a good choice for a local web server on a Windows machine running Windows Subsystem for Linux (WSL) 2:

- [More about Rocky Linux](./rockyLinux/moreAboutRocky.md)

### Stability and Compatibility (Quality: 9/10)

-   Rocky Linux aims to offer a stable and production-ready environment. Its compatibility with RHEL means you're getting an OS with enterprise-grade reliability.

### Performance (Quality: 8/10)

-   WSL 2 offers near-native performance for Linux workloads, and Rocky Linux is optimized for server environments.

### Software Repository and Packages (Quality: 8/10)

-   Rocky Linux comes with a rich software repository. This allows you to easily install web server software like Apache, Nginx, or database systems like MySQL.

### Strong Community and Support (Quality: 8/10)

-   Being a community-driven project, Rocky Linux has a vibrant community that can offer support, which is particularly useful for troubleshooting and optimizations.

### Security (Quality: 9/10)

-   Rocky Linux inherits the strong security features from RHEL, including SELinux for enhanced security policies.

### Cost (Quality: 10/10)

-   One of the biggest advantages is that Rocky Linux is free to use, which makes it a cost-effective option for running a local web server.

### Easy to Manage (Quality: 8/10)

-   With the availability of various management tools and the familiarity of the Linux command line, managing a web server becomes relatively straightforward.

### Development and Production Parity (Quality: 9/10)

-   Using Rocky Linux for both local development (via WSL 2) and production can minimize environment-specific issues, offering a more seamless development experience.

## Optimization and Design Pattern

To optimize the server, you could implement a reverse proxy design pattern using Nginx. This will handle client requests and distribute them to appropriate application servers, improving load balancing and security.

## Python and WebAssembly Alternative

You could use Python frameworks like Flask or Django to set up a web server, and compile Python code to WebAssembly for client-side execution for a faster user experience.


**4. Install Rocky Linux 8.6 Distro**

To install Rocky Linux 8.6 Distro, you can use the `wsl --install -d <DistroName>` command. However, the availability of this distro depends on the Microsoft Store, and as of now, Rocky Linux is not available there. Instead, you can install a distro like Ubuntu and then install Rocky Linux within that environment. [Source 1](https://learn.microsoft.com/en-us/windows/wsl/install)

**5. Update the Distro**

Once you have your desired Linux distro installed, you should update it. Open your distro (Rocky Linux 8.6 Distro in this case) and run these commands:

```sh
sudo dnf update -y
sudo dnf upgrade -y
```

This will ensure that your system is up-to-date with the latest patches and upgrades. [Source 5](https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10)

**Note:** The process of installing Rocky Linux 8.6 specifically on WSL is not straightforward as it is not directly available in the Microsoft Store. You might need to manually download and convert the Rocky Linux 8.6 image to work with WSL. This process might require advanced knowledge of Linux and WSL.