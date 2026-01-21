# Web Attacks Simulation

## Objective
Test IDS detection of web-based attacks.

## Tools
- sqlmap
- Burp Suite

## Example Commands
sqlmap -u "http://10.0.0.30/login.php?id=1" --dbs

## Attack Types
- SQL Injection
- XSS
- Command Injection

## Expected Detection
- IDS alert: SQL Injection attempt
- Web server logs flagged
