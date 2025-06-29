# Workflows Directory

Este directorio contiene los workflows N8N optimizados para Dating AI Agent.

## 📋 Workflows Disponibles

1. **profile_discovery_pipeline.json** - Búsqueda automática de perfiles
2. **conversation_manager.json** - Gestión de conversaciones activas
3. **opportunity_autoresponse_combined.json** - Detección + Auto-respuesta
4. **analytics_dashboard.json** - Métricas y reportes
5. **mcp_api_server_v3_enhanced.json** - Testing del sistema V3.0

## 🚀 Para Importar en N8N

1. Ve a https://n8n-workflows-production-4827.up.railway.app
2. Settings → Import from file
3. Selecciona el workflow .json que quieras importar
4. Configura las credenciales necesarias
5. Activa el workflow

## ⚙️ Configuración Necesaria

Cada workflow necesita:
- **MCP API Server URL**: https://mcp-api-server-production.up.railway.app
- **Database**: PostgreSQL configurado automáticamente
- **Redis**: Cache configurado automáticamente
