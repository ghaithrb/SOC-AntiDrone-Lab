# SOC Network Zones Description

This document describes the different zones in the SOC lab network.

## 1. DMZ (Demilitarized Zone)
- Hosts: Web servers, public-facing services
- Purpose: Isolate internet-facing services from internal network
- Security measures: Firewall rules, IDS monitoring

## 2. Internal LAN
- Hosts: Employee workstations, internal servers
- Purpose: Regular network for staff and internal services
- Security measures: Network segmentation, access control lists (ACLs)

## 3. Guest Network
- Hosts: Visitors, training devices
- Purpose: Provide temporary network access without risking internal assets
- Security measures: VLAN isolation, limited firewall access

## 4. Management Zone
- Hosts: SOC management servers, logging servers
- Purpose: Centralized monitoring and management
- Security measures: Restricted access, encrypted communication

## 5. Monitoring Zone
- Hosts: IDS/IPS, honeypots, SIEM
- Purpose: Collect logs and analyze traffic
- Security measures: Dedicated VLAN, continuous monitoring

$DOC_NOTICE
