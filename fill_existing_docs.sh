#!/bin/bash

echo "[+] Filling existing documentation files..."

# =========================
# ROOT FILES
# =========================

cat <<EOF > README.md
# SOC Anti-Drone Lab

This repository contains sanitized documentation for an academic
SOC laboratory project.

Technologies:
- GNS3
- pfSense
- Snort IDS
- Suricata
- Docker
- Honeypots

⚠️ Documentation only – no deployment scripts included.
EOF

cat <<EOF > DISCLAIMER.md
This repository is for educational purposes only.
No software installation commands are executed on your local machine.
All commands in documentation are for SOC lab on Linux.
EOF

cat <<EOF > LICENSE
MIT License

Copyright (c) 2026 Ghaith Riabi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this documentation and associated files (the "Software"), to deal
in the Software without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
EOF

# =========================
# SNORT INSTALL
# =========================

cat <<'EOF' > linux_servers/snort/install.md
# Snort IDS – Installation Guide (Documentation Only)

⚠️ The following commands are provided for documentation purposes only.
They were executed in a Linux SOC laboratory environment (Ubuntu 22.04).
They were NOT executed on macOS.

---

## 1. System Update
```bash
sudo apt update && sudo apt upgrade -y

