# Forgejo with Asciidoctor

This repository contains a Docker image that extends the official Forgejo image with Asciidoctor support. This allows you to render Asciidoc formatted documentation within your Forgejo instance.

## What's Included

- Base Forgejo image (Alpine-based)
- Asciidoctor for rendering Asciidoc documents

## Usage

### Pull from GitHub Container Registry

```bash
docker pull ghcr.io/lneugebauer/forgejo:latest
```

### Run the Container

```bash
docker run -d --name forgejo \
  -p 3000:3000 \
  -v /path/to/data:/data \
  ghcr.io/lneugebauer/forgejo:latest
```

## Building Locally

To build the Docker image locally:

```bash
docker build -t forgejo .
```