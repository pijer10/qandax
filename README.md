# qandax
Q and A bot

## Build and Deploy Docker Image

The full process for building and preparing the Docker image is as follows:

* Use the CI to build the images. Store in container registry;
    ```
    docker login
    docker pull nginx:1.25.3
    docker tag nginx:1.25.3 your_username/mynginx:v0.1.0
    docker push your_username/mynginx:v0.1.0
    ```
* Use Argo Imageupdater to detect images;
* Write back to git to update the tag in the IaC.

## 