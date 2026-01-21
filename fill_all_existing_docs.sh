#!/bin/bash

echo "[+] Filling all existing documentation files..."

DOC_NOTICE="⚠️ Documentation Only:
The commands and configurations described in this document are provided for academic and documentation purposes only.
They are NOT executed on this machine."

write_file () {
  FILE="$1"
  CONTENT="$2"

  if [ -f "$FILE" ]; then
    echo "$CONTENT" > "$FILE"
  fi
}

# ===================== ROOT FILES =====================

write_file "README.md" "# SOC Anti-Drone Lab

This repository documents a Security Operations Center (SOC) laboratory focused on anti-drone detection and defense.

$DOC_NOTICE
"

write_file "DISCLAIMER.md" "# Disclaimer

All configurations, scripts, and commands in this repository are for educational and documentation purposes only.

$DOC_NOTICE
"

# ===================== ARCHITECTURE =====================

write_file "architecture/overview.md" "# Architecture Overview

This lab simulates an Anti-Drone SOC architecture including detection, firewalling, and monitoring components.

$DOC_NOTICE
"

# ===================== GNS3 =====================

write_file "gns3/topology.md" "# GNS3 Topology

This document describes the virtual topology implemented using GNS3.

Components:
- Firewall
- IDS/IPS
- Monitoring Server
- Attacker Simulation Node

$DOC_NOTICE
"

# ===================== DOCKER =====================

write_file "docker/docker-compose.md" "# Docker Services Documentation

This document describes containerized services used in the SOC lab.

Services include:
- SIEM stack
- Log collectors
- Monitoring dashboards

$DOC_NOTICE
"

# ===================== FIREWALL =====================

write_file "firewall/pfsense.md" "# pfSense Firewall Configuration

This document outlines firewall rules, NAT policies, and logging configuration.

$DOC_NOTICE
"

# ===================== DEFENSES =====================

write_file "defenses/ids_ips.md" "# IDS / IPS Defense Layer

Intrusion Detection and Prevention mechanisms documentation.

Tools:
- Snort
- Suricata (conceptual)

$DOC_NOTICE
"

# ===================== ATTACK SIMULATION =====================

write_file "attacks_simulation/scenarios.md" "# Attack Simulation Scenarios

This document describes simulated attack scenarios used for SOC analysis.

Examples:
- Drone telemetry spoofing
- Network scanning
- Traffic flooding

$DOC_NOTICE
"

# ===================== LINUX SERVERS =====================

write_file "linux_servers/overview.md" "# Linux Servers Overview

This document describes the Linux servers deployed in the lab.

Roles:
- IDS Server
- Log Server
- Monitoring Server

$DOC_NOTICE
"

write_file "linux_servers/snort/configuration.md" "# Snort Configuration (Documentation)

This document explains Snort configuration structure and rules logic.

$DOC_NOTICE
"

echo "[✔] All existing documentation files filled successfully."

