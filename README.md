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

## Automated Updates

Keeping up with upstream is automated; merging a pull request is the only manual step.

1. [Renovate](https://docs.renovatebot.com/) watches `code.forgejo.org/forgejo/forgejo` and opens a
   pull request bumping the `FROM` line whenever a new Forgejo patch is released.
2. Merging that pull request runs [`release.yml`](.github/workflows/release.yml), which works out
   the next version, creates the tag and the GitHub release, and triggers the image build.
3. [`docker-build.yml`](.github/workflows/docker-build.yml) publishes the multi-arch image to GHCR.

Versioning of this repository is independent of the Forgejo version: a Forgejo patch release bumps
the patch version here, while a new Forgejo major bumps the minor version.

Forgejo publishes one [LTS release per year](https://forgejo.org/releases/), and this image tracks
the current LTS line. New major versions are therefore *not* proposed automatically — they are
listed on the Renovate "Dependency Dashboard" issue and only become a pull request once approved
there, so the move to the next LTS stays a deliberate decision.