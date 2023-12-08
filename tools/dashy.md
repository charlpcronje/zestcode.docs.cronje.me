# Dashy Dashboard

Dashy is an open source, highly customizable, easy to use, privacy-respecting dashboard app.
It's packed full of useful features, to help you build your perfect dashboard. Including status checks, keyboard shortcuts, dynamic widgets, auto-fetched favicon icons and font-awesome support, built-in authentication, tons of themes, an interactive config editor, many display layouts plus loads more.
All the code is free and open source, and everything is thoroughly documented, you can get support with any questions on GitHub.

## Quick Start

Welcome to Dashy! So glad you're here 😊 In a couple of minutes, you'll have your new dashboard up and running 🚀

**TLDR;** Run `docker run -p 8080:80 lissy93/dashy`, then open `http://localhost:8080`

## 1. Prerequisites

The quickest and easiest method of running Dashy is using Docker (or another container engine). You can find installation instructions for your system in the [Docker Documentation](https://docs.docker.com/get-docker/). If you don't want to use Docker, then you can use one of Dashy's other supported installation methods instead, all of which are outlined in the [Deployment Docs](https://github.com/Lissy93/dashy/blob/master/docs/deployment.md).

## 2. Installation

To pull the latest image, and build and start the app run:

```sh
docker run -d \
  -p 8080:80 \
  -v ~/my-conf.yml:/app/public/conf.yml \
  --name my-dashboard \
  --restart=always \
  lissy93/dashy:latest
```

Either replace the -v path to point to your config file, or leave it out. For a full list of available options, then see [Dashy with Docker](https://github.com/Lissy93/dashy/blob/master/docs/deployment.md#deploy-with-docker) Docs. If you'd prefer to use Docker Compose, then see [Dashy with Docker Compose](https://github.com/Lissy93/dashy/blob/master/docs/deployment.md#using-docker-compose) Docs. Alternate registries, architectures and pinned versions are also supported.

Your dashboard should now be up and running at `http://localhost:8080` (or your servers IP address/ domain, and the port that you chose). The first time you build, it may take a few minutes.

## 3. Configure[#](https://dashy.to/docs/quick-start#3-configure "Direct link to heading")

Now that you've got Dashy running, you are going to want to set it up with your own content. Config is written in [YAML Format](https://yaml.org/), and saved in [`/public/conf.yml`](https://github.com/Lissy93/dashy/blob/master/public/conf.yml). The format on the config file is pretty straight forward. There are three root attributes:

- [`pageInfo`](https://github.com/Lissy93/dashy/blob/master/docs/configuring.md#pageinfo) - Dashboard meta data, like title, description, nav bar links and footer text
- [`appConfig`](https://github.com/Lissy93/dashy/blob/master/docs/configuring.md#appconfig-optional) - Dashboard settings, like themes, authentication, language and customization
- [`sections`](https://github.com/Lissy93/dashy/blob/master/docs/configuring.md#section) - An array of sections, each including an array of items

You can view a full list of all available config options in the [Configuring Docs](https://github.com/Lissy93/dashy/blob/master/docs/configuring.md).

```yml
pageInfo:
  title: Home Lab
sections: # An array of sections
- name: Example Section
  icon: far fa-rocket
  items:
  - title: GitHub
    description: Dashy source code and docs
    icon: fab fa-github
    url: https://github.com/Lissy93/dashy
  - title: Issues
    description: View open issues, or raise a new one
    icon: fas fa-bug
    url: https://github.com/Lissy93/dashy/issues
- name: Local Services
  items:
  - title: Firewall
    icon: favicon
    url: http://192.168.1.1/
  - title: Game Server
    icon: https://i.ibb.co/710B3Yc/space-invader-x256.png
    url: http://192.168.130.1/
```

## 4. Further Customization


- [Authentication](https://dashy.to/docs/authentication) - Setting up authentication to protect your dashboard
- [Alternate Views](https://dashy.to/docs/alternate-views) - Using the startpage and workspace view
- [Backup & Restore](https://dashy.to/docs/backup-restore) - Guide to Dashy's cloud sync feature
- [Icons](https://dashy.to/docs/icons) - Outline of all available icon types for sections and items
- [Localisation](https://dashy.to/docs/multi-language-support) - How to change language, or add your own
- [Status Indicators](https://dashy.to/docs/status-indicators) - Using Dashy to monitor uptime and status of your apps
- [Search & Shortcuts](https://dashy.to/docs/searching) - Using instant filter, web search and custom hotkeys
- [Theming](https://dashy.to/docs/theming) - Complete guide to applying, writing and modifying themes and styles