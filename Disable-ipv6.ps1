# Run this script as Administrator

# Disable IPv6 on all network adapters
$adapters = Get-NetAdapterBinding -ComponentID ms_tcpip6

foreach ($adapter in $adapters) {
    Disable-NetAdapterBinding -Name $adapter.Name -ComponentID ms_tcpip6
    Write-Host "IPv6 disabled on adapter:" $adapter.Name -ForegroundColor Green
}

Write-Host "IPv6 has been successfully disabled on all network adapters." -ForegroundColor Cyan
