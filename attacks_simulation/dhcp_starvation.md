# DHCP Starvation Attack Simulation

## Objective
Test network resilience and DHCP protection.

## Tool
- Yersinia

## Example Command
yersinia -I
select DHCP → Launch Attack → DHCP Starvation

## Expected Detection
- Excessive DHCP requests
- IDS alert: DHCP flooding
- Switch logs: MAC exhaustion
