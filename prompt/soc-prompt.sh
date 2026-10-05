#!/usr/bin/env bash

# ============================================================
# SOC PROXMOX PROMPT
# Version 1.0
# ============================================================

# Colores ANSI compatibles con Bash Readline
C_RESET=$'\001\033[0m\002'
C_BOLD=$'\001\033[1m\002'
C_RED=$'\001\033[1;31m\002'
C_GREEN=$'\001\033[1;32m\002'
C_YELLOW=$'\001\033[1;33m\002'
C_BLUE=$'\001\033[1;34m\002'
C_CYAN=$'\001\033[1;36m\002'
C_WHITE=$'\001\033[1;37m\002'
C_GRAY=$'\001\033[0;37m\002'

# ============================================================
# Identidad del nodo
# ============================================================

PVE_SERVICE=""

__soc_pve_prompt() {

    local exit_code=$1
    local mgmt_ip
    local current_time
    local status_icon
    local user_icon
    local user_label
    local user_color

    # IP de gestión
    mgmt_ip=$(ip -4 addr show vmbr0 2>/dev/null \
        | awk '/inet / {print $2}' \
        | cut -d/ -f1 \
        | head -n1)

    # Hora local de Santiago
    current_time=$(TZ=America/Santiago date '+%H:%M:%S')

    # Estado del último comando
    if [ "$exit_code" -eq 0 ]; then
        status_icon="${C_GREEN}✔${C_RESET}"
    else
        status_icon="${C_RED}✖${C_RESET}"
    fi

    # Identidad del usuario
    if [ "$EUID" -eq 0 ]; then
        user_icon="🔴"
        user_label="ROOT"
        user_color="${C_RED}"
    else
        user_icon="👤"
        user_label="USER"
        user_color="${C_CYAN}"
    fi

    PS1="${C_BOLD}${C_BLUE}┌─ 🖥️  [PROXMOX]${C_RESET}  "
    PS1+="${user_color}[${user_icon}  ${user_label}]${C_RESET}  "
    PS1+="${C_CYAN}[${USER}@${HOSTNAME}]${C_RESET}"
    PS1+="\n"

    PS1+="${C_BLUE}│  ${C_RESET}"
    PS1+="${C_CYAN}🌐  ${mgmt_ip}${C_RESET}    "
    PS1+="${C_YELLOW}🕐  ${current_time}${C_RESET}"
    PS1+="\n"

    PS1+="${C_BLUE}└─ ${C_RESET}"
    PS1+="📁  [${C_WHITE}\w${C_RESET}]  "
    PS1+="${status_icon}"
    PS1+="\n"
    PS1+="   ${C_BOLD}${C_CYAN}❯${C_RESET} "
}

PROMPT_COMMAND='__soc_pve_prompt "$?"'
