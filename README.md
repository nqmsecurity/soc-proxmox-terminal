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

Será la evolución del dashboard con información ampliada de:

- Storage
- Network
- SOC
- detección de servicios

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
