# SOC Proxmox Prompt

Personalización del prompt Bash para Proxmox VE.

## Características

- Identificación del entorno Proxmox
- Identificación del usuario ROOT/USER
- Hostname
- IP de gestión `vmbr0`
- Hora local de Santiago de Chile
- Ruta de trabajo
- Indicador del resultado del comando anterior
- Compatibilidad con Bash Readline

## Compatibilidad

El prompt utiliza `\001` y `\002` alrededor de las secuencias ANSI para evitar problemas de posicionamiento del cursor y edición de comandos en Bash Readline.

Esto permite utilizar correctamente:

- `↑` / `↓`
- Backspace
- `Ctrl+A`
- `Ctrl+E`
- `Ctrl+U`
- edición de comandos históricos

## Instalación

Añadir el contenido de `soc-prompt.sh` al `.bashrc` del usuario.

