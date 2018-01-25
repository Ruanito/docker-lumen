# Docker Lumen

Run the develoment environment for Lumen framework

Based on the official documentation:

* [lumen](https://lumen.laravel.com)

## Contents

1. [Requirements](#requirements)
   * [Host setup](#host-setup)
2. [Getting started](#getting-started)
   * [Build the image](#build-image)
   * [Bringing up the stack](#bringing-up-the-stack)

## Requirements

### Host setup

1. Install [Docker](https://www.docker.com/community-edition#/download) version **1.10.0+**
2. Install [Docker Compose](https://docs.docker.com/compose/install/) version **1.6.0+**
3. Clone this repository

## Usage

### Buil the image

Build the service using `docker-compose`:

```console
$ docker-compose build
```

### Bringing up the service

**Note**: In case you switched branch or updated a base image - you may need to run `docker-compose build` first

Start the service using `docker-compose`:

```console
$ docker-compose up
```

You can also choose to run it in background (detached mode):

```console
$ docker-compose up -d
```