# Disable IPv6 on All Network Adapters (Windows 11)

A simple and efficient PowerShell script to disable IPv6 on all network adapters in Windows 11.

## Overview

IPv6 can sometimes cause connectivity or compatibility issues on specific networks or applications. This script quickly disables IPv6 across all network adapters, ensuring consistent network behavior.

## How to Use

1. **Download the script**:
   ```bash
   git clone <your-repository-url>
   ```

2. **Run PowerShell as Administrator**:
   - Search for PowerShell in Windows Search.
   - Right-click and select "Run as administrator."

3. **Execute the script**:
   ```powershell
   .\disable_ipv6_adapters.ps1
   ```

4. **Verify Changes**:
   ```powershell
   Get-NetAdapterBinding -ComponentID ms_tcpip6
   ```

   Ensure IPv6 is listed as disabled (`False`) for all adapters.

## Script Features

- Automatically identifies and disables IPv6 bindings.
- Provides clear status updates during execution.
- Simple, easy-to-read PowerShell script.

## Compatibility

- Tested and compatible with Windows 11.
- Should also work with Windows 10 and Windows Server versions.

## Notes

- Ensure you have administrative rights before running the script.
- Restarting your system after execution is recommended to apply all changes fully.

