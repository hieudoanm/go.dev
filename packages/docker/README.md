# 📦 Containerisation

## 📚 Table of Contents

- [📦 Containerisation](#-containerisation)
  - [📚 Table of Contents](#-table-of-contents)
  - [🔁 Docker Alternatives](#-docker-alternatives)
  - [☸️ Kubernetes \& Orchestration](#️-kubernetes--orchestration)
  - [Image Layers](#image-layers)
  - [Cached](#cached)

## 🔁 Docker Alternatives

1. 🐳 **containerd** — Core container runtime extracted from Docker, used by Kubernetes.
2. 🧊 **Podman** — Daemonless, rootless container engine; Docker CLI compatible.
3. 🚀 **CRI-O** — Lightweight runtime for Kubernetes clusters; focuses on OCI compliance.
4. 🔒 **Kata Containers** — Runs containers inside lightweight VMs for stronger isolation.
5. 🔥 **Firecracker** — MicroVMs designed by AWS for serverless and secure multi-tenant workloads.
6. 📦 **LXC/LXD** — System containers for running entire Linux distributions.
7. 🗂️ **rkt** — (Deprecated) CoreOS's security-focused alternative to Docker.

## ☸️ Kubernetes & Orchestration

1. 🐳 **Docker** — Often used as a runtime for local Kubernetes clusters.
2. 🐮 **Rancher** — Full-featured Kubernetes cluster manager with multi-cluster support.
3. ☸️ **Kubernetes** — Leading container orchestration platform for scaling and managing containers.
4. 🗺️ **K3s** — Lightweight, easy-to-install Kubernetes distribution by Rancher.
5. 🔑 **OpenShift** — Enterprise Kubernetes platform by Red Hat with built-in CI/CD and security tools.
6. 🧩 **Nomad** — Lightweight orchestrator by HashiCorp for containers, VMs, and more.
7. 🌐 **Minikube** — Local single-node Kubernetes cluster for development/testing.
8. ⚡ **MicroK8s** — Minimal, fast Kubernetes for IoT, Edge, and developer workstations.

## Image Layers

- Each layer is an image itself, just one without a human-assigned tag. They have auto-generated IDs though.
- Each layer stores the changes compared to the image it's based on.
- An image can consist of a single layer (that's often the case when the squash command was used).
- Each instruction in a Dockerfile results in a layer. (Except for multi-stage builds, where usually only the layers in the final image are pushed, or when an image is squashed to a single layer).
- Layers are used to avoid transferring redundant information and skip build steps which have not changed (according to the Docker cache).

## Cached

- Its parent image exists in the cache
- The Dockerfile instruction corresponding to the layer is unchanged (or in case of ADD/COPY, the involved files are exactly the same)
- Cache Gotcha #1: `RUN apt-get update`
- Using the Cache Well: it is better to update the package management files (`package.json` & `requirements.txt`), you only have to do it once.
