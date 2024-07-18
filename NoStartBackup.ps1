# Delete the registry key
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StorageProvider\OneDrive" -Name "StorageProviderKnownFolderSyncInfoSourceFactory" -Force

# Restart Windows Explorer
Restart-Process -Name explorer -Force
