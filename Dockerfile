# Descargar imagen base node.js
FROM ubuntu:latest

# Udpating and Installing dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    xz-utils \
    openssl
RUN apt install -y \
    build-essential
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs
