# Usar la imagen oficial de n8n
FROM n8nio/n8n:latest

# Cambiar al usuario root para instalar paquetes
USER root

# Instalar el paquete de nodos MCP (verifica que la URL sea correcta)
RUN npm install --save nerding-io/n8n-nodes-mcp

# Configurar variables de entorno
ENV NODES_PACKAGE_NAMES=n8n-nodes-mcp
ENV N8N_TRUST_PROXY=true
ENV N8N_RUNNERS_ENABLED=true
ENV OFFLOAD_MANUAL_EXECUTIONS_TO_WORKERS=true

# Volver al usuario predeterminado
USER node
