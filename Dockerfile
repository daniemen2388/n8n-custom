FROM n8nio/n8n:latest

# Actualizar Node.js a 20.x
USER root
RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt install -y nodejs

# Instalar el paquete
RUN npm install nerding-io/n8n-nodes-mcp
ENV NODES_PACKAGE_NAMES=n8n-nodes-mcp

USER node
