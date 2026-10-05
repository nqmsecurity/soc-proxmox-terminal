# Arquitectura

SOC Proxmox Terminal está diseñado para proporcionar una interfaz visual de administración para nodos Proxmox VE utilizados en laboratorios SOC.

## Arquitectura conceptual

```text
                    PROXMOX VE
                        │
             ┌──────────┴──────────┐
             │                     │
          🖧 VMs                 📦 LXC
             │                     │
             │                  🛡️ SOC
             │                     │
             │          ┌──────────┼──────────┐
             │          │          │          │
             │        SIEM       SOAR        CTI
             │
             └──────────────┐
                            │
                     🖥️ SOC Dashboard
