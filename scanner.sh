#!/bin/bash
echo "[*] Starting local network sweep..."
for ip in {1..10}; do
  ping -c 1 192.168.1.$ip > /dev/null 2>&1
  if [ $? -eq 0]; then
    echo "[+] Host 192.168.1.$ip is UP!"
  fi
done

echo "[*] Scan complete."
