# GNS3 Network Configuration (Documentation Only)

⚠️ All IP addresses and configurations are examples for documentation purposes only.
No real network information is included.

---

## 1. Topology Overview
The SOC lab network consists of multiple zones:

- **DMZ**: Hosts web servers and external services
- **Internal LAN**: Employee workstations and internal servers
- **Guest Network**: Isolated access for visitors
- **Management Zone**: SOC management and logging
- **Monitoring Zone**: IDS/IPS, honeypots, SIEM

---

## 2. Devices and Interfaces

### Firewall (pfSense)
- WAN: 192.168.100.1/24
- LAN: 10.0.0.1/24
- DMZ: 172.16.0.1/24
- Purpose: Segmentation, NAT, ACLs

### IDS Server (Snort)
- Interface: eth0 → LAN
- Interface: eth1 → Monitoring VLAN
- Purpose: Detect suspicious traffic in LAN and DMZ

### Suricata Server
- Interface: eth0 → LAN
- Interface: eth1 → DMZ
- Purpose: IDS/IPS monitoring

### Monitoring Server (SIEM)
- Interface: eth0 → LAN
- Purpose: Centralized log collection

### Attacker Simulation Node
- Interface: eth0 → LAN
- Purpose: Generate traffic to simulate attacks

---

## 3. Connections
- Firewall LAN → Internal LAN switch
- Firewall DMZ → DMZ switch
- IDS / Suricata → Monitoring VLAN switch
- Monitoring Server → LAN switch
- Attacker Node → LAN switch

---

## 4. Notes
- All addresses are **examples only**  
- This document matches the **topology diagram** in `topology_screenshot.png`  
- Intended for academic documentation / SOC lab only
