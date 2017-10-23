**This repository is for software developers who wish to write new features for FarmBot software. Most users do not need to use this package.** The files shown here are already included as precompiled binaries within the [FarmBot Web App](https://github.com/FarmBot/Farmbot-Web-App).

# RabbitMQ Support Files

In order to operate, the FarmBot message broker requires custom plugins and configuration. We ship the compiled binaries and Docker base images with the [Web App](https://github.com/FarmBot/Farmbot-Web-App) and store build tools and source code here.

This repository contains two things:

 * **`src_for_jwt_plugin/`**: The source code for the custom authorization plugin used by the FarmBot Web App.
 * **`src_for_docker_container/`**: The source code for the [RabbitMQ docker base image](https://hub.docker.com/r/rickcarlino/rmq_base/).

# Building the Docker Image

```
cd src_for_docker_container; sudo docker build . --tag=TAG_NAME_HERE
```

# Building the Custom JWT Plugin From Source

```
cd src_for_jwt_plugin; make; make dist; cd ..
```
