# SOC Proxmox Terminal

Personalización de terminal Bash y dashboard interactivo para Proxmox VE, orientado a entornos de laboratorio y operaciones SOC.

## Características

### SOC Proxmox Prompt

- Identificación del entorno Proxmox
- Identificación del usuario ROOT/USER
- Hostname
- IP de gestión
- Hora local de Santiago de Chile
- Directorio actual
- Estado del último comando
- Compatibilidad con Bash Readline

### SOC Proxmox Dashboard

- Información del nodo Proxmox
- CPU
- Memoria RAM
- Load Average
- Almacenamiento
- Máquinas virtuales
- Contenedores LXC
- Red
- Servicios del host
- Información de servicios SOC

## Versiones

### v1.0.0

Basada en el Dashboard V4.

Incluye:

- Dashboard interactivo
- Vista del nodo
- Vista de máquinas virtuales
- Vista de contenedores LXC
- Vista de almacenamiento
- Vista de red
- Vista de servicios
- Vista SOC
- Prompt Bash personalizado

### v2.0.0

Basada en el Dashboard V5.

Incluye:

- Dashboard interactivo mejorado
- Menú alineado independientemente del ancho de los emojis
- Información ampliada del almacenamiento Proxmox
- Conversión de capacidades a GiB
- Información del filesystem raíz
- Información ampliada de red
- Estado de interfaces principales
- Estado del bridge `vmbr0`
- Gateway y tabla de rutas
- Verificación de conectividad
- Verificación DNS
- Detección de interfaces virtuales de VMs y LXC
- Indicadores visuales de estado
- Mejoras de consistencia visual del dashboard

Esta versión se establece como la versión estable actual del proyecto.

## Requisitos

- Proxmox VE
- Bash
- systemd
- `pvesm`
- `qm`
- `pct`
- `ip`

## Instalación

Consultar:

- [Installation](docs/installation.md)
- [Architecture](docs/architecture.md)
- [Prompt](prompt/README.md)

## Licencia

MIT License
