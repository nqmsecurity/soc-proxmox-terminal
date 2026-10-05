#!/usr/bin/env bash

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo
echo "=============================================="
echo "     SOC PROXMOX TERMINAL INSTALLER"
echo "=============================================="
echo

echo "[1/3] Instalando dashboard..."

install -m 0755 \
    "$PROJECT_DIR/dashboard/soc-dashboard" \
    /usr/local/bin/soc-dashboard

echo "[2/3] Dashboard instalado."

echo "[3/3] Instalación del prompt."
echo
echo "El prompt se encuentra en:"
echo
echo "  $PROJECT_DIR/prompt/soc-prompt.sh"
echo
echo "Añádelo al .bashrc del usuario que corresponda."
echo

echo "=============================================="
echo "     INSTALACIÓN COMPLETADA"
echo "=============================================="
echo
