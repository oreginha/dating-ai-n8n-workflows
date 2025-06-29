FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node/.n8n

# Copy workflows
COPY workflows/ ./workflows/

# Copy credentials (if any)
COPY credentials/ ./credentials/

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV GENERIC_TIMEZONE=America/Argentina/Buenos_Aires
ENV N8N_USER_MANAGEMENT_DISABLED=true

# Enable webhook support
ENV WEBHOOK_URL=${WEBHOOK_URL}

# Database configuration
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=postgresql
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=${POSTGRES_DB}
ENV DB_POSTGRESDB_USER=${POSTGRES_USER}
ENV DB_POSTGRESDB_PASSWORD=${POSTGRES_PASSWORD}

# Expose port
EXPOSE 5678

# Start N8N
CMD ["n8n", "start"]
