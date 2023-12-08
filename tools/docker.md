# Docker

Docker is a containerization platform that allows you to run applications inside containers. Containers are lightweight, isolated environments that contain everything needed to run an application, including the application code, runtime, libraries, and dependencies. Docker provides a way to package these applications into portable containers, which can be easily deployed and run on any system that has Docker installed.

## Install

```sh
sudo apt-get update && sudo apt-get install -y docker.io docker-compose
```

### Here are some key points about Docker based on the provided search results:

- Docker consists of multiple components, including the Docker client, Docker daemon (also known as `dockerd`), and Docker registries.
- The Docker client is the primary way to interact with Docker and sends commands to the Docker daemon.
- Docker registries store Docker images, which are the building blocks of containers. Docker Hub is a popular public registry, but you can also run your own private registry.
- Docker allows you to create, manage, and run containers, which are isolated environments that contain all the necessary dependencies to run an application.
- Docker images define the software available in containers and can be shared with others.
- Docker provides a command-line interface (CLI) with various commands to manage containers, such as `docker run`, `docker start`, `docker restart`, and `docker rmi`.

To get started with Docker, you can follow these steps:

1. Download and install Docker for your operating system from the official Docker website.
2. Once Docker is installed, open Docker Desktop and sign in with your Docker Hub account.
3. Open your command line or terminal and run the following command to test Docker:
   ```
   docker run -d -p 80:80 docker/getting-started
   ```
   This command pulls the `docker/getting-started` image from Docker Hub and starts a container running a simple web application on port 80.
4. You can view the running container in Docker Desktop and access the web application by opening a web browser and navigating to `http://localhost`.

Here are some additional resources that provide more information about Docker:

- [Docker Documentation](https://docs.docker.com/): The official documentation for Docker, which covers various topics including installation, getting started, and advanced usage.
- [Docker Overview](https://www.ibm.com/topics/docker): An overview of Docker and its core components by IBM.
- [Docker Explained – An Introductory Guide To Docker](https://www.edureka.co/blog/docker-explained/): A comprehensive guide to Docker that covers its history, concepts, and usage.
- [Introduction to Docker](https://www.geeksforgeeks.org/introduction-to-docker/): A beginner-friendly introduction to Docker, explaining its key concepts and components.

I hope this summary provides a clear understanding of what Docker is and how it can be used for containerization. If you have any further questions, feel free to ask!
