
# Docker Image with Node.js, Python, and PHP
---

This Docker image is based on Alpine Linux and comes pre-installed with Node.js, Python, and PHP.

## Installation

### Build the Docker Image

1. Save the following Dockerfile to a directory:

    ```Dockerfile
    FROM alpine:latest

    # Install Node.js, Python, and PHP
    RUN apk update && \
        apk add --no-cache nodejs npm python3 py3-pip php

    # Clean up
    RUN rm -rf /var/cache/apk/*

    CMD ["sh"]
    ```

2. Build the Docker image:
    ```sh
    docker build -t my_alpine_image .
    ```

3. Save the Docker image to a `.tar` file:
    ```sh
    docker save -o my_alpine_image.tar my_alpine_image
    ```

## Usage

### Load and Run the Docker Image

1. Load the Docker image from the `.tar` file:
    ```sh
    docker load -i my_alpine_image.tar
    ```

2. Run a container from the loaded image:
    ```sh
    docker run -it my_alpine_image
    ```

## Details

This Docker image uses Alpine Linux, a small and efficient Linux distribution. It includes the following software:

- Node.js
- npm (Node Package Manager)
- Python 3
- pip (Python Package Installer)
- PHP
