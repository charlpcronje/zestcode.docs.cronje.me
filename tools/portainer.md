# Portainer

Portainer is a universal container management tool that provides a user-friendly interface for managing Docker environments. It simplifies the deployment and management of Docker and Kubernetes containers, making it especially useful for developers new to containerization[

Portainer is deployed as a Docker container itself, which makes it lightweight and compatible with any Docker engine running on Windows, macOS, or Linux systems. The tool offers the ability to manage containers, images, volumes, and networks and is capable of managing multiple Docker endpoints.

## Key features of Portainer include:

- Container Management: Portainer enables you to start, stop, kill, restart, pause, resume, or remove containers with ease. You can also view container logs and statistics to monitor resource utilization and diagnose issues.
- Image Management: Portainer allows you to manage Docker images, including pulling new images into your Docker environment and building new Docker images.
- Endpoint Management: Portainer supports managing multiple Docker endpoints, making it possible to manage Docker environments on different machines from a single Portainer instance.
- Network Management: Portainer provides the ability to attach networks to running containers and manage network settings.
- User and Access Management: Portainer includes role-based access control features, enabling you to manage access to container resources for different users or groups.
- Dashboard: Portainer provides a comprehensive dashboard that gives a quick overview of your operational environment with important statistics.

Portainer is available in two versions: the free and open source Community Edition (CE) and a paid Enterprise Edition (EE). The paid version offers additional benefits such as service support. The tool is popular among developers of all skill levels due to its ease of use and feature-rich GUI.

To install simply run, but make sure you have [Docker installed first](./docker.md)

```sh
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer:latest
```
