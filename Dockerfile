# Partimos de la imagen oficial de n8n
FROM n8nio/n8n:latest

# Copiamos la carpeta compilada de nodos personalizados
COPY n8n-nodes-mcp/dist /app/n8n-nodes-mcp/dist

# Variable de entorno para indicar a n8n dónde están los nodos
ENV N8N_CUSTOM_EXTENSIONS=/app/n8n-nodes-mcp/dist

# Exponemos el puerto 5678
EXPOSE 5678